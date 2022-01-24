#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int* val; } ;
struct TYPE_8__ {TYPE_2__ f_fsid; } ;
struct mount {TYPE_3__ mnt_vfsstat; TYPE_1__* mnt_vtable; } ;
struct TYPE_9__ {int* val; } ;
typedef  TYPE_4__ fsid_t ;
struct TYPE_6__ {int vfc_typenum; } ;

/* Variables and functions */
 void* FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ mntid_gen ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ nblkdev ; 
 scalar_t__ FUNC3 (TYPE_4__*) ; 

void
FUNC4(struct mount *mp)
{

	fsid_t tfsid;
	int mtype;

	FUNC1();

	/* generate a new fsid */
	mtype = mp->mnt_vtable->vfc_typenum;
	if (++mntid_gen == 0)
		mntid_gen++;
	tfsid.val[0] = FUNC0(nblkdev + mtype, mntid_gen);
	tfsid.val[1] = mtype;

	while (FUNC3(&tfsid)) {
		if (++mntid_gen == 0)
			mntid_gen++;
		tfsid.val[0] = FUNC0(nblkdev + mtype, mntid_gen);
	}

	mp->mnt_vfsstat.f_fsid.val[0] = tfsid.val[0];
	mp->mnt_vfsstat.f_fsid.val[1] = tfsid.val[1];
	FUNC2();
}