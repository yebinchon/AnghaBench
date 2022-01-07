
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ boolean ;
struct TYPE_4__ {int width; } ;


 int HU_FONTSIZE ;
 int HU_FONTSTART ;
 int SCREENWIDTH ;
 int SHORT (int ) ;
 int V_DrawPatch (int,int,int ,TYPE_1__*) ;
 int V_DrawPatchDirect (int,int,int ,TYPE_1__*) ;
 TYPE_1__** hu_font ;
 int toupper (char) ;

int
M_DrawText
( int x,
  int y,
  boolean direct,
  char* string )
{
    int c;
    int w;

    while (*string)
    {
 c = toupper(*string) - HU_FONTSTART;
 string++;
 if (c < 0 || c> HU_FONTSIZE)
 {
     x += 4;
     continue;
 }

 w = SHORT (hu_font[c]->width);
 if (x+w > SCREENWIDTH)
     break;
 if (direct)
     V_DrawPatchDirect(x, y, 0, hu_font[c]);
 else
     V_DrawPatch(x, y, 0, hu_font[c]);
 x+=w;
    }

    return x;
}
