#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int con_cols; int con_rows; } ;

/* Variables and functions */
 TYPE_1__* curr_con ; 

void FUNC0(int *cols, int *rows)
{
	if(curr_con) {
		*cols = curr_con->con_cols;
		*rows = curr_con->con_rows;
	}
}