
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * columnofs; int width; int height; int leftoffset; int topoffset; } ;
typedef TYPE_1__ patch_t ;
struct TYPE_5__ {int topdelta; int length; } ;
typedef TYPE_2__ column_t ;
typedef int byte ;


 int LONG (int ) ;
 int SCREENHEIGHT ;
 int SCREENWIDTH ;
 int SHORT (int ) ;
 int V_MarkRect (int,int,int,int) ;
 int fprintf (int ,char*,...) ;
 int ** screens ;
 int stderr ;

void
V_DrawPatch
( int x,
  int y,
  int scrn,
  patch_t* patch )
{

    int count;
    int col;
    column_t* column;
    byte* desttop;
    byte* dest;
    byte* source;
    int w;

    y -= SHORT(patch->topoffset);
    x -= SHORT(patch->leftoffset);
    if (!scrn)
 V_MarkRect (x, y, SHORT(patch->width), SHORT(patch->height));

    col = 0;
    desttop = screens[scrn]+y*SCREENWIDTH+x;

    w = SHORT(patch->width);

    for ( ; col<w ; x++, col++, desttop++)
    {
 column = (column_t *)((byte *)patch + LONG(patch->columnofs[col]));


 while (column->topdelta != 0xff )
 {
     source = (byte *)column + 3;
     dest = desttop + column->topdelta*SCREENWIDTH;
     count = column->length;

     while (count--)
     {
  *dest = *source++;
  dest += SCREENWIDTH;
     }
     column = (column_t *)( (byte *)column + column->length
        + 4 );
 }
    }
}
