
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cursor_col; int cursor_row; } ;


 TYPE_1__* curr_con ;

void CON_GetPosition(int *col, int *row)
{
 if(curr_con) {
  *col = curr_con->cursor_col;
  *row = curr_con->cursor_row;
 }
}
