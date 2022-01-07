
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int byte ;
struct TYPE_3__ {int width; } ;


 int HU_FONTSIZE ;
 int HU_FONTSTART ;
 int PU_CACHE ;
 int SCREENHEIGHT ;
 int SCREENWIDTH ;
 int SHORT (int ) ;
 int TEXTSPEED ;
 int V_DrawPatch (int,int,int ,TYPE_1__*) ;
 int V_MarkRect (int ,int ,int,int) ;
 int * W_CacheLumpName (int ,int ) ;
 int finalecount ;
 int finaleflat ;
 char* finaletext ;
 TYPE_1__** hu_font ;
 int memcpy (int *,int *,int) ;
 int ** screens ;
 int toupper (int) ;

void F_TextWrite (void)
{
    byte* src;
    byte* dest;

    int x,y,w;
    int count;
    char* ch;
    int c;
    int cx;
    int cy;


    src = W_CacheLumpName ( finaleflat , PU_CACHE);
    dest = screens[0];

    for (y=0 ; y<SCREENHEIGHT ; y++)
    {
 for (x=0 ; x<SCREENWIDTH/64 ; x++)
 {
     memcpy (dest, src+((y&63)<<6), 64);
     dest += 64;
 }
 if (SCREENWIDTH&63)
 {
     memcpy (dest, src+((y&63)<<6), SCREENWIDTH&63);
     dest += (SCREENWIDTH&63);
 }
    }

    V_MarkRect (0, 0, SCREENWIDTH, SCREENHEIGHT);


    cx = 10;
    cy = 10;
    ch = finaletext;

    count = (finalecount - 10)/TEXTSPEED;
    if (count < 0)
 count = 0;
    for ( ; count ; count-- )
    {
 c = *ch++;
 if (!c)
     break;
 if (c == '\n')
 {
     cx = 10;
     cy += 11;
     continue;
 }

 c = toupper(c) - HU_FONTSTART;
 if (c < 0 || c> HU_FONTSIZE)
 {
     cx += 4;
     continue;
 }

 w = SHORT (hu_font[c]->width);
 if (cx+w > SCREENWIDTH)
     break;
 V_DrawPatch(cx, cy, 0, hu_font[c]);
 cx+=w;
    }

}
