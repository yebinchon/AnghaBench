#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* user_ldt_t ;
typedef  scalar_t__ uint16_t ;
typedef  TYPE_2__* thread_t ;
typedef  TYPE_3__* task_t ;
struct real_descriptor {int dummy; } ;
struct TYPE_9__ {scalar_t__ limit_low; } ;
struct TYPE_8__ {TYPE_1__* i386_ldt; } ;
struct TYPE_7__ {TYPE_3__* task; } ;
struct TYPE_6__ {size_t start; int count; int /*<<< orphan*/  ldt; } ;

/* Variables and functions */
 int /*<<< orphan*/  KERNEL_LDT ; 
 size_t LDTSZ_MIN ; 
 int /*<<< orphan*/  USER_LDT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct real_descriptor*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct real_descriptor*,int) ; 
 scalar_t__ FUNC2 () ; 
 TYPE_5__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void
FUNC5(
	thread_t thread)
{
        task_t		task = thread->task;
	user_ldt_t	user_ldt;

	user_ldt = task->i386_ldt;

	if (user_ldt != 0) {
	    struct real_descriptor *ldtp = (struct real_descriptor *)FUNC2();

	    if (user_ldt->start > LDTSZ_MIN) {
		FUNC1(&ldtp[LDTSZ_MIN],
		      sizeof(struct real_descriptor) * (user_ldt->start - LDTSZ_MIN));
	    }
	    
	    FUNC0(user_ldt->ldt, &ldtp[user_ldt->start],
		  sizeof(struct real_descriptor) * (user_ldt->count));

	    FUNC3(USER_LDT)->limit_low = (uint16_t)((sizeof(struct real_descriptor) * (user_ldt->start + user_ldt->count)) - 1);

	    FUNC4(USER_LDT);
	} else {
	    FUNC4(KERNEL_LDT);
	}
}