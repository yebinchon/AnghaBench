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
typedef  int /*<<< orphan*/  vnode_t ;
typedef  int /*<<< orphan*/ * vfs_context_t ;
typedef  int boolean_t ;
struct TYPE_2__ {int kdebug_flags; } ;

/* Variables and functions */
 int ENODATA ; 
 int KDBG_MAPINIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__ kd_ctrl_page ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int
FUNC4(vnode_t vp, vfs_context_t ctx)
{
	int ret = 0;
	boolean_t map_initialized;

	FUNC3();
	FUNC0(ctx != NULL);

	map_initialized = (kd_ctrl_page.kdebug_flags & KDBG_MAPINIT);

	ret = FUNC2(map_initialized, vp, ctx);
	if (ret == 0) {
		if (map_initialized) {
			FUNC1();
		} else {
			ret = ENODATA;
		}
	}

	return ret;
}