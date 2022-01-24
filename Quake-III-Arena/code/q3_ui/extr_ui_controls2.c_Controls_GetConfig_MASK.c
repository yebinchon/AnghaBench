#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_9__ ;
typedef  struct TYPE_20__   TYPE_8__ ;
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct TYPE_21__ {int bind1; int bind2; int /*<<< orphan*/  command; int /*<<< orphan*/  label; } ;
typedef  TYPE_9__ bind_t ;
struct TYPE_20__ {void* curvalue; } ;
struct TYPE_19__ {void* curvalue; } ;
struct TYPE_18__ {void* curvalue; } ;
struct TYPE_17__ {void* curvalue; } ;
struct TYPE_16__ {void* curvalue; } ;
struct TYPE_15__ {void* curvalue; } ;
struct TYPE_14__ {void* curvalue; } ;
struct TYPE_13__ {int curvalue; } ;
struct TYPE_12__ {TYPE_8__ freelook; TYPE_7__ joythreshold; TYPE_6__ joyenable; TYPE_5__ sensitivity; TYPE_4__ autoswitch; TYPE_3__ alwaysrun; TYPE_2__ smoothmouse; TYPE_1__ invertmouse; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int*) ; 
 void* FUNC2 (float,int,scalar_t__) ; 
 TYPE_9__* g_bindings ; 
 TYPE_10__ s_controls ; 

__attribute__((used)) static void FUNC3( void )
{
	int		i;
	int		twokeys[2];
	bind_t*	bindptr;

	// put the bindings into a local store
	bindptr = g_bindings;

	// iterate each command, get its numeric binding
	for (i=0; ;i++,bindptr++)
	{
		if (!bindptr->label)
			break;

		FUNC1(bindptr->command, twokeys);

		bindptr->bind1 = twokeys[0];
		bindptr->bind2 = twokeys[1];
	}

	s_controls.invertmouse.curvalue  = FUNC0( "m_pitch" ) < 0;
	s_controls.smoothmouse.curvalue  = FUNC2( 0, 1, FUNC0( "m_filter" ) );
	s_controls.alwaysrun.curvalue    = FUNC2( 0, 1, FUNC0( "cl_run" ) );
	s_controls.autoswitch.curvalue   = FUNC2( 0, 1, FUNC0( "cg_autoswitch" ) );
	s_controls.sensitivity.curvalue  = FUNC2( 2, 30, FUNC0( "sensitivity" ) );
	s_controls.joyenable.curvalue    = FUNC2( 0, 1, FUNC0( "in_joystick" ) );
	s_controls.joythreshold.curvalue = FUNC2( 0.05f, 0.75f, FUNC0( "joy_threshold" ) );
	s_controls.freelook.curvalue     = FUNC2( 0, 1, FUNC0( "cl_freelook" ) );
}