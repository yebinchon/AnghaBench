#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int /*<<< orphan*/ * ret_arg; } ;
struct TYPE_5__ {TYPE_1__ wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_2__* _thr_executing ; 

void FUNC3(void *value_ptr)
{
	FUNC1();
	_thr_executing->wait.ret_arg = (u32*)value_ptr;
	FUNC0(_thr_executing);
	FUNC2();
}