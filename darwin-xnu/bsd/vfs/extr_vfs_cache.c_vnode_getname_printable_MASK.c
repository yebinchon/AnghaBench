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
typedef  TYPE_1__* vnode_t ;
typedef  int /*<<< orphan*/  dev_name ;
struct TYPE_4__ {int v_type; int /*<<< orphan*/  v_rdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
#define  VBLK 129 
#define  VCHR 128 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char const* unknown_vnodename ; 
 char* FUNC6 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC7 (TYPE_1__*) ; 

const char *
FUNC8(vnode_t vp)
{
	const char *name = FUNC7(vp);
	if (name != NULL)
		return name;
	
	switch (vp->v_type) {
		case VCHR:
		case VBLK:
			{
			/*
			 * Create an artificial dev name from
			 * major and minor device number
			 */
			char dev_name[64];
			(void) FUNC4(dev_name, sizeof(dev_name),
					"%c(%u, %u)", VCHR == vp->v_type ? 'c':'b',
					FUNC2(vp->v_rdev), FUNC3(vp->v_rdev));
			/*
			 * Add the newly created dev name to the name
			 * cache to allow easier cleanup. Also,
			 * vfs_addname allocates memory for the new name
			 * and returns it.
			 */
			FUNC0();
			name = FUNC6(dev_name, FUNC5(dev_name), 0, 0);
			FUNC1();
			return name;
			}
		default:
			return unknown_vnodename;
	}
}