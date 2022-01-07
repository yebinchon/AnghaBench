
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LodePNGColorType ;


 unsigned int lodepng_encode_memory (unsigned char**,size_t*,unsigned char const*,unsigned int,unsigned int,int ,unsigned int) ;
 int lodepng_free (unsigned char*) ;
 unsigned int lodepng_save_file (unsigned char*,size_t,char const*) ;

unsigned lodepng_encode_file(const char* filename, const unsigned char* image, unsigned w, unsigned h,
                             LodePNGColorType colortype, unsigned bitdepth)
{
  unsigned char* buffer;
  size_t buffersize;
  unsigned error = lodepng_encode_memory(&buffer, &buffersize, image, w, h, colortype, bitdepth);
  if(!error) error = lodepng_save_file(buffer, buffersize, filename);
  lodepng_free(buffer);
  return error;
}
