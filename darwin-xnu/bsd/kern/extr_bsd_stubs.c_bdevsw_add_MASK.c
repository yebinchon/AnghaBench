#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct bdevsw {int dummy; } ;

/* Variables and functions */
 struct bdevsw* bdevsw ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  devsw_lock_list_mtx ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

int
FUNC3(int index, struct bdevsw * bsw)
{
	FUNC1(&devsw_lock_list_mtx);
	index = FUNC0(index);
	if (index < 0) {
		index = -1;
	} else {
		bdevsw[index] = *bsw;
	}
	FUNC2(&devsw_lock_list_mtx);
	return (index);
}