
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int FILE ;


 int * FCEUD_UTF8fopen (char*,char*) ;
 int FCEUI_SetPaletteArray (int *) ;
 char* cpalette ;
 int fclose (int *) ;
 int fread (int *,int,int,int *) ;
 int printf (char*,char*) ;

__attribute__((used)) static void LoadCPalette(void)
{
 uint8 tmpp[192];
 FILE *fp;

 if(!(fp=FCEUD_UTF8fopen(cpalette,"rb")))
 {
  printf(" Error loading custom palette from file: %s\n",cpalette);
  return;
 }
 fread(tmpp,1,192,fp);
 FCEUI_SetPaletteArray(tmpp);
 fclose(fp);
}
