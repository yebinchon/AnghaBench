
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LZ4_compress_default (char const* const,char* const,int,int) ;
 int memcpy (char* const,char const* const,int) ;

int tsCompressStringImp(const char *const input, int inputSize, char *const output, int outputSize) {

  const int compressed_data_size = LZ4_compress_default(input, output + 1, inputSize, outputSize-1);


  if (compressed_data_size <= 0 || compressed_data_size > inputSize) {

    output[0] = 0;
    memcpy(output + 1, input, inputSize);
    return inputSize + 1;
  }

  output[0] = 1;
  return compressed_data_size + 1;
}
