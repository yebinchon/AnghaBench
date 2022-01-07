
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

int FONT_write(char *string, int size, int x, int y, int max_width, GXColor color)
{
  x -= (vmode->fbWidth / 2);
  y -= (vmode->efbHeight / 2);
  int w, ox = x;

  while (*string && (*string != '\n'))
  {
    w = (font_size[(u8)*string] * size) / fheight;
    if ((x + w) > (ox + max_width)) return strlen(string);
    DrawChar(*string, x, y, size,color);
    x += w;
    string++;
  }

  if (*string == '\n')
  {
    string++;
    return FONT_write(string, size, ox + (vmode->fbWidth / 2), y + size + (vmode->efbHeight / 2), max_width, color);
  }

  return 0;
}
