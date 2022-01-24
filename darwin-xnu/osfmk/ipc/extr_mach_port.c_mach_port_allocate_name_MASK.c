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
typedef  int /*<<< orphan*/  mach_port_right_t ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ mach_port_qos_t ;
typedef  int /*<<< orphan*/  mach_port_name_t ;
typedef  int /*<<< orphan*/  kern_return_t ;
typedef  int /*<<< orphan*/  ipc_space_t ;

/* Variables and functions */
 int /*<<< orphan*/  KERN_INVALID_VALUE ; 
 int /*<<< orphan*/  MACH_PORT_NULL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 TYPE_1__ qos_template ; 

kern_return_t
FUNC2(
	ipc_space_t		space,
	mach_port_right_t	right,
	mach_port_name_t	name)
{
	kern_return_t		kr;
	mach_port_qos_t		qos = qos_template;

	qos.name = TRUE;

	if (!FUNC0(name))
		return KERN_INVALID_VALUE;

	kr = FUNC1 (space, right, MACH_PORT_NULL,
					&qos, &name);
	return (kr);
}