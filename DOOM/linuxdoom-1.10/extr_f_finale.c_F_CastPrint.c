
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int width; } ;


 int HU_FONTSIZE ;
 int HU_FONTSTART ;
 int SHORT (int ) ;
 int V_DrawPatch (int,int,int ,TYPE_1__*) ;
 TYPE_1__** hu_font ;
 int toupper (int) ;

void F_CastPrint (char* text)
{
    char* ch;
    int c;
    int cx;
    int w;
    int width;


    ch = text;
    width = 0;

    while (ch)
    {
 c = *ch++;
 if (!c)
     break;
 c = toupper(c) - HU_FONTSTART;
 if (c < 0 || c> HU_FONTSIZE)
 {
     width += 4;
     continue;
 }

 w = SHORT (hu_font[c]->width);
 width += w;
    }


    cx = 160-width/2;
    ch = text;
    while (ch)
    {
 c = *ch++;
 if (!c)
     break;
 c = toupper(c) - HU_FONTSTART;
 if (c < 0 || c> HU_FONTSIZE)
 {
     cx += 4;
     continue;
 }

 w = SHORT (hu_font[c]->width);
 V_DrawPatch(cx, 180, 0, hu_font[c]);
 cx+=w;
    }

}
