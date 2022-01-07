
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cursor_row; int con_cols; int cursor_col; } ;
typedef TYPE_1__ console_data_s ;


 int __console_clear_line (int,int ,int ) ;
 TYPE_1__* curr_con ;

__attribute__((used)) static void __console_clear_to_cursor() {
 console_data_s *con;
 int cur_row;

  if( !(con = curr_con) ) return;
 cur_row = con->cursor_row;

  __console_clear_line( cur_row, 0, con->cursor_col );

  while( cur_row-- )
    __console_clear_line( cur_row, 0, con->con_cols );
}
