https://llvm.org/docs/LibFuzzer.html#getting-started

installing clang includes libFuzzer (for any version > 6.0).


test that the commands afl-fuzz exists
> afl-fuzz -h

> ls
test.cc


> clang++ -fsanitize=address,fuzzer test.cc
expected output: nothing (and as a consequence no error).

> ./a.out
expected output: the first line starts with “INFO: SEED: … ”, then there are many lines,
and the last line ends with a base64 string.


if it has error / strange output, troubleshooting
- if clang++ is not found, this is probably because the symlink was not created. can search clang++-<version> instead.
-be careful to create a cc file (C++), not a c file.
-ask chatgpt 



