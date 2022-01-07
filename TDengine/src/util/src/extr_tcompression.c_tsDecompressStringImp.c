
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int LZ4_decompress_safe (char const* const,char* const,int,int) ;
 int exit (int ) ;
 int memcpy (char* const,char const* const,int) ;
 int perror (char*) ;
 int sprintf (char*,char*,int const) ;

int tsDecompressStringImp(const char *const input, int compressedSize, char *const output, int outputSize) {

  if (input[0] == 1) {

    const int decompressed_size = LZ4_decompress_safe(input + 1, output, compressedSize - 1, outputSize);
    if (decompressed_size < 0) {
      char msg[128] = {0};
      sprintf(msg, "decomp_size:%d, Error decompress in LZ4 algorithm!\n", decompressed_size);
      perror(msg);
      exit(EXIT_FAILURE);
    }

    return decompressed_size;
  } else if (input[0] == 0) {

    memcpy(output, input + 1, compressedSize - 1);
    return compressedSize - 1;
  } else {
    perror("Wrong compressed string indicator!\n");
    exit(EXIT_FAILURE);
  }
}
