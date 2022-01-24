#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct mount {int dummy; } ;
typedef  TYPE_2__* mount_t ;
struct TYPE_9__ {TYPE_1__* mnt_vtable; } ;
struct TYPE_8__ {int /*<<< orphan*/  vfc_refcount; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_MOUNT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC6(mount_t mp) {

	FUNC2();
	mp->mnt_vtable->vfc_refcount--;
	FUNC3();

	FUNC5(mp);

	FUNC4(mp);

#if CONFIG_MACF
	mac_mount_label_destroy(mp);
#endif

	FUNC0(mp, sizeof(struct mount), M_MOUNT);
}