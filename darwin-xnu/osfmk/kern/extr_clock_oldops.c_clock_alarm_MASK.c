#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  spl_t ;
typedef  int /*<<< orphan*/  mach_timespec_t ;
typedef  int /*<<< orphan*/  mach_msg_type_name_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/  ipc_port_t ;
typedef  TYPE_2__* clock_t ;
typedef  int /*<<< orphan*/  alarm_type_t ;
typedef  TYPE_3__* alarm_t ;
struct TYPE_11__ {scalar_t__ al_seqno; TYPE_2__* al_clock; int /*<<< orphan*/  al_port_type; int /*<<< orphan*/  al_port; int /*<<< orphan*/  al_type; int /*<<< orphan*/  al_time; int /*<<< orphan*/  al_status; struct TYPE_11__* al_next; } ;
struct TYPE_10__ {TYPE_1__* cl_ops; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* c_gettime ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  ALARM_CLOCK ; 
 TYPE_2__* CLOCK_NULL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KERN_FAILURE ; 
 int /*<<< orphan*/  KERN_INVALID_ARGUMENT ; 
 int /*<<< orphan*/  KERN_INVALID_CAPABILITY ; 
 int /*<<< orphan*/  KERN_INVALID_VALUE ; 
 int /*<<< orphan*/  KERN_RESOURCE_SHORTAGE ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t SYSTEM_CLOCK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  alarm_zone ; 
 int /*<<< orphan*/  alrm_seqno ; 
 TYPE_3__* alrmfree ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* clock_list ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 

kern_return_t
FUNC8(
	clock_t					clock,
	alarm_type_t			alarm_type,
	mach_timespec_t			alarm_time,
	ipc_port_t				alarm_port,
	mach_msg_type_name_t	alarm_port_type)
{
	alarm_t					alarm;
	mach_timespec_t			clock_time;
	int						chkstat;
	kern_return_t			reply_code;
	spl_t					s;

	if (clock == CLOCK_NULL)
		return (KERN_INVALID_ARGUMENT);
	if (clock != &clock_list[SYSTEM_CLOCK])
		return (KERN_FAILURE);
	if (FUNC0(alarm_port) == 0)
		return (KERN_INVALID_CAPABILITY);

	/*
	 * Check alarm parameters. If parameters are invalid,
	 * send alarm message immediately.
	 */
	(*clock->cl_ops->c_gettime)(&clock_time);
	chkstat = FUNC3(alarm_type, &alarm_time, &clock_time);
	if (chkstat <= 0) {
		reply_code = (chkstat < 0 ? KERN_INVALID_VALUE : KERN_SUCCESS);
		FUNC4(alarm_port, alarm_port_type,
				  reply_code, alarm_type, clock_time);
		return (KERN_SUCCESS);
	}

	/*
	 * Get alarm and add to clock alarm list.
	 */

	FUNC1(s);
	if ((alarm = alrmfree) == 0) {
		FUNC2(s);
		alarm = (alarm_t) FUNC7(alarm_zone);
		if (alarm == 0)
			return (KERN_RESOURCE_SHORTAGE);
		FUNC1(s);
	}
	else
		alrmfree = alarm->al_next;

	alarm->al_status = ALARM_CLOCK;
	alarm->al_time = alarm_time;
	alarm->al_type = alarm_type;
	alarm->al_port = alarm_port;
	alarm->al_port_type = alarm_port_type;
	alarm->al_clock = clock;
	alarm->al_seqno = alrm_seqno++;
	FUNC5(alarm);
	FUNC2(s);

	return (KERN_SUCCESS);
}