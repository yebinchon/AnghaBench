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
struct TYPE_3__ {scalar_t__ waitStatus; } ;
typedef  TYPE_1__ PGPROC ;

/* Variables and functions */
 scalar_t__ STATUS_WAITING ; 

bool
FUNC0(PGPROC *proc)
{
	return proc->waitStatus == STATUS_WAITING;
}