#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vm_offset_t ;
struct TYPE_2__ {int kdebug_flags; } ;

/* Variables and functions */
 int KDBG_MAPINIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ kd_ctrl_page ; 
 scalar_t__ kd_mapcount ; 
 int /*<<< orphan*/ * kd_mapptr ; 
 scalar_t__ kd_mapsize ; 
 int /*<<< orphan*/  kernel_map ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void
FUNC3(void)
{
	FUNC2();

	if (kd_ctrl_page.kdebug_flags & KDBG_MAPINIT) {
		FUNC0(kd_mapptr != NULL);
		FUNC1(kernel_map, (vm_offset_t)kd_mapptr, kd_mapsize);
		kd_mapptr = NULL;
		kd_mapsize = 0;
		kd_mapcount = 0;
		kd_ctrl_page.kdebug_flags &= ~KDBG_MAPINIT;
	}
}