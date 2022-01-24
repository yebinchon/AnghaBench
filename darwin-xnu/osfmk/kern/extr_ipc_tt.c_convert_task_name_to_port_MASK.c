#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* task_name_t ;
typedef  scalar_t__ ipc_port_t ;
struct TYPE_6__ {scalar_t__ itk_nself; } ;

/* Variables and functions */
 scalar_t__ IP_NULL ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

ipc_port_t
FUNC4(
	task_name_t		task_name)
{
	ipc_port_t port;

	FUNC1(task_name);
	if (task_name->itk_nself != IP_NULL)
		port = FUNC0(task_name->itk_nself);
	else
		port = IP_NULL;
	FUNC2(task_name);

	FUNC3(task_name);
	return port;
}