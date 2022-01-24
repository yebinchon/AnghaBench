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
typedef  scalar_t__ u_int32_t ;
struct mount {int /*<<< orphan*/  mnt_kern_flag; } ;
typedef  int /*<<< orphan*/  fsid_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  MNT_LNOTRESP ; 
 scalar_t__ VQ_DEAD ; 
 scalar_t__ VQ_NOTRESP ; 
 int /*<<< orphan*/  fs_klist ; 
 int /*<<< orphan*/  fs_klist_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mount*) ; 
 int /*<<< orphan*/  FUNC4 (struct mount*) ; 
 struct mount* FUNC5 (int /*<<< orphan*/ *) ; 

void
FUNC6(fsid_t *fsid, u_int32_t event, intptr_t data)
{
	if (event == VQ_DEAD || event == VQ_NOTRESP) {
		struct mount *mp = FUNC5(fsid);
		if (mp) {
			FUNC3(mp);
			if (data)
				mp->mnt_kern_flag &= ~MNT_LNOTRESP;	// Now responding
			else
				mp->mnt_kern_flag |= MNT_LNOTRESP;	// Not responding
			FUNC4(mp);
		}
	}

	FUNC1(fs_klist_lock);
	FUNC0(&fs_klist, event);
	FUNC2(fs_klist_lock);
}