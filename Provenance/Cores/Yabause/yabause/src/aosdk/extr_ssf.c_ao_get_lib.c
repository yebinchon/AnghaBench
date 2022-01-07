
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef scalar_t__ u64 ;
typedef int u32 ;
typedef int FILE ;


 int AO_FAIL ;
 int AO_SUCCESS ;
 int SEEK_END ;
 int SEEK_SET ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 size_t fread (int *,int,int,int *) ;
 int fseek (int *,int ,int ) ;
 int ftell (int *) ;
 int * malloc (int) ;
 int printf (char*,...) ;

int ao_get_lib(char *filename, u8 **buffer, u64 *length)
{
 u8 *filebuf;
 u32 size;
 FILE *auxfile;
   size_t fread_val = 0;

 auxfile = fopen(filename, "rb");
 if (!auxfile)
 {
  printf("Unable to find auxiliary file %s\n", filename);
  return AO_FAIL;
 }

 fseek(auxfile, 0, SEEK_END);
 size = ftell(auxfile);
 fseek(auxfile, 0, SEEK_SET);

 filebuf = malloc(size);

 if (!filebuf)
 {
  fclose(auxfile);
  printf("ERROR: could not allocate %d bytes of memory\n", size);
  return AO_FAIL;
 }

   fread_val = fread(filebuf, size, 1, auxfile);
 fclose(auxfile);

 *buffer = filebuf;
 *length = (u64)size;

 return AO_SUCCESS;
}
