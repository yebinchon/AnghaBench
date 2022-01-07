
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t UBYTE ;
typedef int FILE ;


 int ATARI_VISIBLE_WIDTH ;
 int Colours_GetB (int) ;
 int Colours_GetG (int) ;
 int Colours_GetR (int) ;
 size_t* Colours_table ;
 int Screen_HEIGHT ;
 int Screen_WIDTH ;
 int fputc (int,int *) ;
 int fputw (int,int *) ;

__attribute__((used)) static void Screen_SavePCX(FILE *fp, UBYTE *ptr1, UBYTE *ptr2)
{
 int i;
 int x;
 int y;
 UBYTE plane = 16;
 UBYTE last;
 UBYTE count;

 fputc(0xa, fp);
 fputc(0x5, fp);
 fputc(0x1, fp);
 fputc(0x8, fp);
 fputw(0, fp);
 fputw(0, fp);
 fputw(ATARI_VISIBLE_WIDTH - 1, fp);
 fputw(Screen_HEIGHT - 1, fp);
 fputw(0, fp);
 fputw(0, fp);
 for (i = 0; i < 48; i++)
  fputc(0, fp);
 fputc(0, fp);
 fputc(ptr2 != ((void*)0) ? 3 : 1, fp);
 fputw(ATARI_VISIBLE_WIDTH, fp);
 fputw(1, fp);
 fputw(ATARI_VISIBLE_WIDTH, fp);
 fputw(Screen_HEIGHT, fp);
 for (i = 0; i < 54; i++)
  fputc(0, fp);

 for (y = 0; y < Screen_HEIGHT; ) {
  x = 0;
  do {
   last = ptr2 != ((void*)0) ? (((Colours_table[*ptr1] >> plane) & 0xff) + ((Colours_table[*ptr2] >> plane) & 0xff)) >> 1 : *ptr1;
   count = 0xc0;
   do {
    ptr1++;
    if (ptr2 != ((void*)0))
     ptr2++;
    count++;
    x++;
   } while (last == (ptr2 != ((void*)0) ? (((Colours_table[*ptr1] >> plane) & 0xff) + ((Colours_table[*ptr2] >> plane) & 0xff)) >> 1 : *ptr1)
      && count < 0xff && x < ATARI_VISIBLE_WIDTH);
   if (count > 0xc1 || last >= 0xc0)
    fputc(count, fp);
   fputc(last, fp);
  } while (x < ATARI_VISIBLE_WIDTH);

  if (ptr2 != ((void*)0) && plane) {
   ptr1 -= ATARI_VISIBLE_WIDTH;
   ptr2 -= ATARI_VISIBLE_WIDTH;
   plane -= 8;
  }
  else {
   ptr1 += Screen_WIDTH - ATARI_VISIBLE_WIDTH;
   if (ptr2 != ((void*)0)) {
    ptr2 += Screen_WIDTH - ATARI_VISIBLE_WIDTH;
    plane = 16;
   }
   y++;
  }
 }

 if (ptr2 == ((void*)0)) {

  fputc(0xc, fp);
  for (i = 0; i < 256; i++) {
   fputc(Colours_GetR(i), fp);
   fputc(Colours_GetG(i), fp);
   fputc(Colours_GetB(i), fp);
  }
 }
}
