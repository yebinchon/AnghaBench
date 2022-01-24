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
struct TYPE_2__ {int kdebug_flags; } ;

/* Variables and functions */
 int KDBG_MAPINIT ; 
 TYPE_1__ kd_ctrl_page ; 
 int /*<<< orphan*/  kd_mapcount ; 
 scalar_t__ kd_mapptr ; 
 int /*<<< orphan*/  kd_mapsize ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 

void
FUNC2(void)
{
	FUNC1();

	if (kd_ctrl_page.kdebug_flags & KDBG_MAPINIT) {
		return;
	}

	kd_mapptr = FUNC0(0, &kd_mapsize, &kd_mapcount);

	if (kd_mapptr) {
		kd_ctrl_page.kdebug_flags |= KDBG_MAPINIT;
	}
}