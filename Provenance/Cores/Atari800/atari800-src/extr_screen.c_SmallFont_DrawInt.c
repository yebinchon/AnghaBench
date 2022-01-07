
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 int SMALLFONT_WIDTH ;
 int SmallFont_DrawChar (int *,int,int ,int ) ;

__attribute__((used)) static UBYTE *SmallFont_DrawInt(UBYTE *screen, int n, UBYTE color1, UBYTE color2)
{
 do {
  SmallFont_DrawChar(screen, n % 10, color1, color2);
  screen -= SMALLFONT_WIDTH;
  n /= 10;
 } while (n > 0);
 return screen;
}
