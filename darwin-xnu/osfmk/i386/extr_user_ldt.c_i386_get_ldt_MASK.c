#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* user_ldt_t ;
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint32_t ;
typedef  TYPE_2__* task_t ;
struct real_descriptor {int dummy; } ;
typedef  int kern_return_t ;
struct TYPE_7__ {TYPE_1__* i386_ldt; } ;
struct TYPE_6__ {unsigned int start; unsigned int count; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ LDTSZ ; 
 unsigned int LDTSZ_MIN ; 
 int FUNC0 (char*,scalar_t__,unsigned int) ; 
 scalar_t__ FUNC1 () ; 
 TYPE_2__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 

int
FUNC5(
	uint32_t		*retval,
	uint32_t		start_sel,
	uint32_t		descs,	/* out */
	uint32_t		num_sels)
{
	user_ldt_t	user_ldt;
	task_t		task = FUNC2();
	unsigned int	ldt_count;
	kern_return_t	err;

	if (start_sel >= LDTSZ)
	    return EINVAL;
	if ((uint64_t)start_sel + (uint64_t)num_sels > LDTSZ)
	    return EINVAL;
	if (descs == 0)
	    return EINVAL;

	FUNC3(task);

	user_ldt = task->i386_ldt;
	err = 0;

	/*
	 * copy out the descriptors
	 */

	if (user_ldt != 0)
	    ldt_count = user_ldt->start + user_ldt->count;
	else
	    ldt_count = LDTSZ_MIN;


	if (start_sel < ldt_count)
	{
	    unsigned int copy_sels = num_sels;

	    if (start_sel + num_sels > ldt_count)
		copy_sels = ldt_count - start_sel;

	    err = FUNC0((char *)(FUNC1() + start_sel),
			  descs, copy_sels * sizeof(struct real_descriptor));
	}

	FUNC4(task);

	*retval = ldt_count;

	return err;
}