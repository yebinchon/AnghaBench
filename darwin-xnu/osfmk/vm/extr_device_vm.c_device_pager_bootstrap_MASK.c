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
typedef  int vm_size_t ;
struct device_pager {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ MAX_DNODE ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int /*<<< orphan*/  Z_CALLERACCT ; 
 int /*<<< orphan*/  device_pager_lck_attr ; 
 int /*<<< orphan*/  device_pager_lck_grp ; 
 int /*<<< orphan*/  device_pager_lck_grp_attr ; 
 int /*<<< orphan*/  device_pager_zone ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC5(void)
{
	vm_size_t      size;

	size = (vm_size_t) sizeof(struct device_pager);
	device_pager_zone = FUNC3(size, (vm_size_t) MAX_DNODE*size,
				PAGE_SIZE, "device node pager structures");
	FUNC4(device_pager_zone, Z_CALLERACCT, FALSE);

	FUNC1(&device_pager_lck_grp_attr);
	FUNC2(&device_pager_lck_grp, "device_pager", &device_pager_lck_grp_attr);
	FUNC0(&device_pager_lck_attr);

	return;
}