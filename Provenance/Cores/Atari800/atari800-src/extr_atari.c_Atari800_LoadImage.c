
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;
typedef int FILE ;


 int FALSE ;
 int Log_print (char*,char const*) ;
 int TRUE ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fread (int *,int,int,int *) ;

int Atari800_LoadImage(const char *filename, UBYTE *buffer, int nbytes)
{
 FILE *f;
 int len;

 f = fopen(filename, "rb");
 if (f == ((void*)0)) {
  Log_print("Error loading ROM image: %s", filename);
  return FALSE;
 }
 len = fread(buffer, 1, nbytes, f);
 fclose(f);
 if (len != nbytes) {
  Log_print("Error reading %s", filename);
  return FALSE;
 }
 return TRUE;
}
