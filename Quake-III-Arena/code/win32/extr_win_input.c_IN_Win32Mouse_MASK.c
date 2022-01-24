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
struct TYPE_3__ {int x; int y; } ;
typedef  TYPE_1__ POINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int window_center_x ; 
 int window_center_y ; 

void FUNC2( int *mx, int *my ) {
	POINT		current_pos;

	// find mouse movement
	FUNC0 (&current_pos);

	// force the mouse to the center, so there's room to move
	FUNC1 (window_center_x, window_center_y);

	*mx = current_pos.x - window_center_x;
	*my = current_pos.y - window_center_y;
}