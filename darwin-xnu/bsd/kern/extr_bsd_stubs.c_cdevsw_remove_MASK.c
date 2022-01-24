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
struct cdevsw {int dummy; } ;

/* Variables and functions */
 struct cdevsw* cdevsw ; 
 scalar_t__* cdevsw_flags ; 
 int /*<<< orphan*/  devsw_lock_list_mtx ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,char*,int) ; 
 int nchrdev ; 
 struct cdevsw nocdev ; 

int
FUNC3(int index, struct cdevsw * csw)
{
	struct cdevsw * devsw;

	if (index < 0 || index >= nchrdev)
		return (-1);

	devsw = &cdevsw[index];
	FUNC0(&devsw_lock_list_mtx);
	if ((FUNC2((char *)devsw, (char *)csw, sizeof(struct cdevsw)) != 0)) {
		index = -1;
	} else {
		cdevsw[index] = nocdev;
		cdevsw_flags[index] = 0;
	}
	FUNC1(&devsw_lock_list_mtx);
	return (index);
}