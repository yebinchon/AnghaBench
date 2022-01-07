
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int width; } ;


 int HU_FONTSIZE ;
 int HU_FONTSTART ;
 int SCREENWIDTH ;
 int SHORT (int ) ;
 int V_DrawPatchDirect (int,int,int ,TYPE_1__*) ;
 TYPE_1__** hu_font ;
 int toupper (int) ;

void
M_WriteText
( int x,
  int y,
  char* string)
{
    int w;
    char* ch;
    int c;
    int cx;
    int cy;


    ch = string;
    cx = x;
    cy = y;

    while(1)
    {
 c = *ch++;
 if (!c)
     break;
 if (c == '\n')
 {
     cx = x;
     cy += 12;
     continue;
 }

 c = toupper(c) - HU_FONTSTART;
 if (c < 0 || c>= HU_FONTSIZE)
 {
     cx += 4;
     continue;
 }

 w = SHORT (hu_font[c]->width);
 if (cx+w > SCREENWIDTH)
     break;
 V_DrawPatchDirect(cx, cy, 0, hu_font[c]);
 cx+=w;
    }
}
