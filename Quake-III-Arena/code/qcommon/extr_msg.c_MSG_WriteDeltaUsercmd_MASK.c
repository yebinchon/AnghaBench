#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int serverTime; int /*<<< orphan*/  weapon; int /*<<< orphan*/  buttons; int /*<<< orphan*/  upmove; int /*<<< orphan*/  rightmove; int /*<<< orphan*/  forwardmove; int /*<<< orphan*/ * angles; } ;
typedef  TYPE_1__ usercmd_t ;
typedef  int /*<<< orphan*/  msg_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

void FUNC2( msg_t *msg, usercmd_t *from, usercmd_t *to ) {
	if ( to->serverTime - from->serverTime < 256 ) {
		FUNC0( msg, 1, 1 );
		FUNC0( msg, to->serverTime - from->serverTime, 8 );
	} else {
		FUNC0( msg, 0, 1 );
		FUNC0( msg, to->serverTime, 32 );
	}
	FUNC1( msg, from->angles[0], to->angles[0], 16 );
	FUNC1( msg, from->angles[1], to->angles[1], 16 );
	FUNC1( msg, from->angles[2], to->angles[2], 16 );
	FUNC1( msg, from->forwardmove, to->forwardmove, 8 );
	FUNC1( msg, from->rightmove, to->rightmove, 8 );
	FUNC1( msg, from->upmove, to->upmove, 8 );
	FUNC1( msg, from->buttons, to->buttons, 16 );
	FUNC1( msg, from->weapon, to->weapon, 8 );
}