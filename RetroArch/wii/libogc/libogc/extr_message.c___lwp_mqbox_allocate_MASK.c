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
struct TYPE_3__ {int /*<<< orphan*/  object; } ;
typedef  TYPE_1__ mqbox_st ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  _lwp_mqbox_objects ; 

__attribute__((used)) static mqbox_st* FUNC4()
{
	mqbox_st *mqbox;

	FUNC2();
	mqbox = (mqbox_st*)FUNC0(&_lwp_mqbox_objects);
	if(mqbox) {
		FUNC1(&_lwp_mqbox_objects,&mqbox->object);
		return mqbox;
	}
	FUNC3();
	return NULL;
}