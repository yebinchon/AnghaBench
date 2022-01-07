
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct TYPE_2__ {int fbWidth; int efbHeight; } ;
typedef int GXColor ;


 int DrawChar (char,int,int,int,int ) ;
 int fheight ;
 int* font_size ;
 int strlen (char*) ;
 TYPE_1__* vmode ;

int FONT_alignRight(char *string, int size, int x, int y, GXColor color)
{
  int i;
  int w = 0;

  x -= (vmode->fbWidth / 2);
  y -= (vmode->efbHeight / 2);

  int ox = x;

  for (i=0; i<strlen(string); i++)
  {
    w += (font_size[(u8)string[i]] * size) / fheight;
  }

  x = ox - w;

  while (*string)
  {
    w = (font_size[(u8)*string] * size) / fheight;
    if ((x + w) > ox) return strlen(string);
    DrawChar(*string, x, y, size,color);
    x += w;
    string++;
  }
  return 0;
}
