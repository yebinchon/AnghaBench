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
union kds_ptr {scalar_t__ raw; } ;
typedef  scalar_t__ uint32_t ;
struct kd_storage {union kds_ptr kds_next; } ;
struct kd_bufinfo {union kds_ptr kd_list_head; } ;
struct TYPE_2__ {int /*<<< orphan*/  kds_inuse_count; union kds_ptr kds_free_list; } ;

/* Variables and functions */
 int FALSE ; 
 struct kd_storage* FUNC0 (union kds_ptr) ; 
 TYPE_1__ kd_ctrl_page ; 
 struct kd_bufinfo* kdbip ; 
 int /*<<< orphan*/  kds_spin_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 

void
FUNC4(int cpu, uint32_t kdsp_raw)
{
	int s = 0;
	struct	kd_storage *kdsp_actual;
	struct kd_bufinfo *kdbp;
	union kds_ptr kdsp;

	kdsp.raw = kdsp_raw;

	s = FUNC3(FALSE);
	FUNC1(kds_spin_lock);

	kdbp = &kdbip[cpu];

	if (kdsp.raw == kdbp->kd_list_head.raw) {
		/*
		 * it's possible for the storage unit pointed to
		 * by kdsp to have already been stolen... so
		 * check to see if it's still the head of the list
		 * now that we're behind the lock that protects 
		 * adding and removing from the queue...
		 * since we only ever release and steal units from
		 * that position, if it's no longer the head
		 * we having nothing to do in this context
		 */
		kdsp_actual = FUNC0(kdsp);
		kdbp->kd_list_head = kdsp_actual->kds_next;

		kdsp_actual->kds_next = kd_ctrl_page.kds_free_list;
		kd_ctrl_page.kds_free_list = kdsp;

		kd_ctrl_page.kds_inuse_count--;
	}
	FUNC2(kds_spin_lock);
	FUNC3(s);
}