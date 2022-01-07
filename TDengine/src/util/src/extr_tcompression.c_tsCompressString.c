
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tsCompressStringImp (char const* const,int,char* const,int) ;

int tsCompressString(const char *const input, int inputSize, const int nelements, char *const output, int outputSize,
                     char algorithm, char *const buffer, int bufferSize) {
  return tsCompressStringImp(input, inputSize, output, outputSize);
}
