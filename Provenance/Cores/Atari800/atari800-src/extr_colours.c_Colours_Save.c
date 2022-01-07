
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rgb ;
typedef int FILE ;


 char Colours_GetB (int) ;
 char Colours_GetG (int) ;
 char Colours_GetR (int) ;
 int FALSE ;
 int TRUE ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fwrite (char*,int,int,int *) ;

int Colours_Save(const char *filename)
{
 FILE *fp;
 int i;

 fp = fopen(filename, "wb");
 if (fp == ((void*)0)) {
  return FALSE;
 }


 for (i = 0; i < 256; i ++) {
  char rgb[3];
  rgb[0] = Colours_GetR(i);
  rgb[1] = Colours_GetG(i);
  rgb[2] = Colours_GetB(i);
  if (fwrite(rgb, sizeof(rgb), 1, fp) != 1) {
   fclose(fp);
   return FALSE;
  }
 }

 fclose(fp);
 return TRUE;
}
