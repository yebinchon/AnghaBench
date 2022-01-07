
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int UBYTE ;
typedef int FILE ;


 int ANTIC_Frame (int) ;
 int ATARI_LEFT_MARGIN ;
 int FALSE ;
 int Screen_HEIGHT ;
 int Screen_SavePCX (int *,int *,int *) ;
 int Screen_SavePNG (int *,int *,int *) ;
 int Screen_WIDTH ;
 int * Screen_atari ;
 int TRUE ;
 scalar_t__ Util_malloc (int) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int free (int *) ;
 scalar_t__ striendswith (char const*,char*) ;

int Screen_SaveScreenshot(const char *filename, int interlaced)
{
 int is_png;
 FILE *fp;
 ULONG *main_screen_atari;
 UBYTE *ptr1;
 UBYTE *ptr2;
 if (striendswith(filename, ".pcx"))
  is_png = 0;




 else
  return FALSE;
 fp = fopen(filename, "wb");
 if (fp == ((void*)0))
  return FALSE;
 main_screen_atari = Screen_atari;
 ptr1 = (UBYTE *) Screen_atari + ATARI_LEFT_MARGIN;
 if (interlaced) {
  Screen_atari = (ULONG *) Util_malloc(Screen_WIDTH * Screen_HEIGHT);
  ptr2 = (UBYTE *) Screen_atari + ATARI_LEFT_MARGIN;
  ANTIC_Frame(TRUE);
 }
 else {
  ptr2 = ((void*)0);
 }





  Screen_SavePCX(fp, ptr1, ptr2);
 fclose(fp);
 if (interlaced) {
  free(Screen_atari);
  Screen_atari = main_screen_atari;
 }
 return TRUE;
}
