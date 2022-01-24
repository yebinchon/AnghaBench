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
typedef  int /*<<< orphan*/  s32 ;
typedef  int /*<<< orphan*/  mutex_t ;
struct TYPE_4__ {int /*<<< orphan*/  mutex; } ;
typedef  TYPE_1__ mutex_st ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

s32 FUNC5(mutex_t mutex)
{
	mutex_st *p = FUNC3(mutex);
	if(!p) return 0;

	if(FUNC2(&p->mutex)) {
		FUNC4();
		return EBUSY;
	}
	FUNC0(&p->mutex,EINVAL);
	FUNC4();

	FUNC1(p);
	return 0;
}