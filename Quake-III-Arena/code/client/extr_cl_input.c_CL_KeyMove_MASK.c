#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {void* upmove; void* rightmove; void* forwardmove; int /*<<< orphan*/  buttons; } ;
typedef  TYPE_1__ usercmd_t ;
struct TYPE_9__ {int integer; } ;
struct TYPE_8__ {int active; } ;
struct TYPE_7__ {scalar_t__ active; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUTTON_WALKING ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int) ; 
 TYPE_4__* cl_run ; 
 int /*<<< orphan*/  in_back ; 
 int /*<<< orphan*/  in_down ; 
 int /*<<< orphan*/  in_forward ; 
 int /*<<< orphan*/  in_left ; 
 int /*<<< orphan*/  in_moveleft ; 
 int /*<<< orphan*/  in_moveright ; 
 int /*<<< orphan*/  in_right ; 
 TYPE_3__ in_speed ; 
 TYPE_2__ in_strafe ; 
 int /*<<< orphan*/  in_up ; 

void FUNC2( usercmd_t *cmd ) {
	int		movespeed;
	int		forward, side, up;

	//
	// adjust for speed key / running
	// the walking flag is to keep animations consistant
	// even during acceleration and develeration
	//
	if ( in_speed.active ^ cl_run->integer ) {
		movespeed = 127;
		cmd->buttons &= ~BUTTON_WALKING;
	} else {
		cmd->buttons |= BUTTON_WALKING;
		movespeed = 64;
	}

	forward = 0;
	side = 0;
	up = 0;
	if ( in_strafe.active ) {
		side += movespeed * FUNC0 (&in_right);
		side -= movespeed * FUNC0 (&in_left);
	}

	side += movespeed * FUNC0 (&in_moveright);
	side -= movespeed * FUNC0 (&in_moveleft);


	up += movespeed * FUNC0 (&in_up);
	up -= movespeed * FUNC0 (&in_down);

	forward += movespeed * FUNC0 (&in_forward);
	forward -= movespeed * FUNC0 (&in_back);

	cmd->forwardmove = FUNC1( forward );
	cmd->rightmove = FUNC1( side );
	cmd->upmove = FUNC1( up );
}