#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int cursor_row; int /*<<< orphan*/  con_cols; int /*<<< orphan*/  con_rows; int /*<<< orphan*/  cursor_col; } ;
typedef  TYPE_1__ console_data_s ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* curr_con ; 

__attribute__((used)) static void FUNC1() {
	console_data_s *con;
	int cur_row;

  if( !(con = curr_con) ) return;
	cur_row = con->cursor_row;

  FUNC0( cur_row, con->cursor_col, con->con_cols );

  while( cur_row++ < con->con_rows )
    FUNC0( cur_row, 0, con->con_cols );

}