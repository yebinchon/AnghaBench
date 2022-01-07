
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int con_xres; int con_yres; scalar_t__ saved_col; scalar_t__ saved_row; scalar_t__ cursor_col; scalar_t__ cursor_row; int background; scalar_t__ destbuffer; } ;
typedef TYPE_1__ console_data_s ;


 TYPE_1__* curr_con ;

__attribute__((used)) static void __console_clear(void)
{
 console_data_s *con;
 unsigned int c;
 unsigned int *p;

 if( !(con = curr_con) ) return;

 c = (con->con_xres*con->con_yres)/2;
 p = (unsigned int*)con->destbuffer;

 while(c--)
  *p++ = con->background;

 con->cursor_row = 0;
 con->cursor_col = 0;
 con->saved_row = 0;
 con->saved_col = 0;
}
