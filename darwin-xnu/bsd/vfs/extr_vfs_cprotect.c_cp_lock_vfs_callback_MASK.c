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
typedef  int /*<<< orphan*/  uuid_t ;
struct vfs_attr {int /*<<< orphan*/  f_uuid; } ;
typedef  int /*<<< orphan*/  mount_t ;
struct TYPE_2__ {scalar_t__ state; int /*<<< orphan*/  volume_uuid; scalar_t__ valid_uuid; } ;
typedef  TYPE_1__ cp_lock_vfs_callback_arg ;

/* Variables and functions */
 int /*<<< orphan*/  FIODEVICELOCKED ; 
 int /*<<< orphan*/  FUNC0 (struct vfs_attr*) ; 
 int /*<<< orphan*/  FUNC1 (struct vfs_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vfs_attr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  f_uuid ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,struct vfs_attr*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(mount_t mp, void *arg)
{
	cp_lock_vfs_callback_arg *callback_arg = (cp_lock_vfs_callback_arg *)arg;

	if (callback_arg->valid_uuid)  {
		struct vfs_attr va;
		FUNC0(&va);
		FUNC2(&va, f_uuid);

		if (FUNC7(mp, &va, FUNC5()))
			return 0;

		if (!FUNC1(&va, f_uuid))
			return 0;

		if(FUNC4(va.f_uuid, callback_arg->volume_uuid, sizeof(uuid_t)))
			return 0;
	}

	FUNC3(mp, FIODEVICELOCKED, (void *)(uintptr_t)callback_arg->state, 0, FUNC6());
	return 0;
}