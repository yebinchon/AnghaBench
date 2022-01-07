
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int con_cols; int con_rows; } ;


 TYPE_1__* curr_con ;

void CON_GetMetrics(int *cols, int *rows)
{
 if(curr_con) {
  *cols = curr_con->con_cols;
  *rows = curr_con->con_rows;
 }
}
