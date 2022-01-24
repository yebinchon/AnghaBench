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
struct TYPE_3__ {int num_reserved; void** p; scalar_t__ num_item; int /*<<< orphan*/  lock; } ;
typedef  TYPE_1__ SL_LIST ;

/* Variables and functions */
 int SL_INIT_NUM_RESERVED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int) ; 

SL_LIST *FUNC2()
{
	SL_LIST *o;

	o = (SL_LIST *)FUNC1(sizeof(SL_LIST));

	o->lock = FUNC0();

	o->num_item = 0;
	o->num_reserved = SL_INIT_NUM_RESERVED;

	o->p = (void **)FUNC1(sizeof(void *) * o->num_reserved);

	return o;
}