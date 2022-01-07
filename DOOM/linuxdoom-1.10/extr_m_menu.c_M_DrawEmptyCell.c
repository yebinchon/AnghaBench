
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ y; scalar_t__ x; } ;
typedef TYPE_1__ menu_t ;


 int LINEHEIGHT ;
 int PU_CACHE ;
 int V_DrawPatchDirect (scalar_t__,scalar_t__,int ,int ) ;
 int W_CacheLumpName (char*,int ) ;

void
M_DrawEmptyCell
( menu_t* menu,
  int item )
{
    V_DrawPatchDirect (menu->x - 10, menu->y+item*LINEHEIGHT - 1, 0,
         W_CacheLumpName("M_CELL1",PU_CACHE));
}
