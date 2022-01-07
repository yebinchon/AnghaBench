
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tsDecompressStringImp (char const* const,int,char* const,int) ;

int tsDecompressString(const char *const input, int compressedSize, const int nelements, char *const output,
                       int outputSize, char algorithm, char *const buffer, int bufferSize) {
  return tsDecompressStringImp(input, compressedSize, output, outputSize);
}
