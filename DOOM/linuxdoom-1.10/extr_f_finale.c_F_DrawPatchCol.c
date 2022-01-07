
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * columnofs; } ;
typedef TYPE_1__ patch_t ;
struct TYPE_5__ {int topdelta; int length; } ;
typedef TYPE_2__ column_t ;
typedef int byte ;


 int LONG (int ) ;
 int SCREENWIDTH ;
 int ** screens ;

void
F_DrawPatchCol
( int x,
  patch_t* patch,
  int col )
{
    column_t* column;
    byte* source;
    byte* dest;
    byte* desttop;
    int count;

    column = (column_t *)((byte *)patch + LONG(patch->columnofs[col]));
    desttop = screens[0]+x;


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
 column = (column_t *)( (byte *)column + column->length + 4 );
    }
}
