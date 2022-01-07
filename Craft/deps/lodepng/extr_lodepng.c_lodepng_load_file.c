
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SEEK_END ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 size_t fread (unsigned char*,int,size_t,int *) ;
 int fseek (int *,int ,int ) ;
 long ftell (int *) ;
 scalar_t__ lodepng_malloc (size_t) ;
 int rewind (int *) ;

unsigned lodepng_load_file(unsigned char** out, size_t* outsize, const char* filename)
{
  FILE* file;
  long size;


  *out = 0;
  *outsize = 0;

  file = fopen(filename, "rb");
  if(!file) return 78;


  fseek(file , 0 , SEEK_END);
  size = ftell(file);
  rewind(file);


  *outsize = 0;
  *out = (unsigned char*)lodepng_malloc((size_t)size);
  if(size && (*out)) (*outsize) = fread(*out, 1, (size_t)size, file);

  fclose(file);
  if(!(*out) && size) return 83;
  return 0;
}
