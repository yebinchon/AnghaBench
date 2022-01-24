#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ mach_voucher_attr_value_reference_t ;
typedef  int mach_voucher_attr_value_handle_t ;
typedef  scalar_t__ mach_voucher_attr_key_t ;
typedef  scalar_t__ kern_return_t ;
typedef  TYPE_1__* ivac_entry_t ;
typedef  size_t iv_index_t ;
typedef  TYPE_2__* ipc_voucher_attr_manager_t ;
typedef  TYPE_3__* ipc_voucher_attr_control_t ;
struct TYPE_14__ {size_t ivac_table_size; size_t ivac_freelist; TYPE_1__* ivac_table; } ;
struct TYPE_13__ {scalar_t__ (* ivam_release_value ) (TYPE_2__*,scalar_t__,int,scalar_t__) ;} ;
struct TYPE_12__ {scalar_t__ ivace_refs; int ivace_value; scalar_t__ ivace_made; size_t ivace_index; size_t ivace_next; void* ivace_free; void* ivace_releasing; scalar_t__ ivace_persist; } ;

/* Variables and functions */
 void* FALSE ; 
 TYPE_3__* IVAC_NULL ; 
 TYPE_2__* IVAM_NULL ; 
 size_t IV_HASH_END ; 
 size_t IV_UNUSED_VALINDEX ; 
 scalar_t__ KERN_SUCCESS ; 
 scalar_t__ MACH_VOUCHER_ATTR_KEY_NONE ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 size_t FUNC1 (size_t,int) ; 
 scalar_t__ FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (size_t,void*,TYPE_2__**,TYPE_3__**) ; 
 scalar_t__ FUNC7 (TYPE_2__*,scalar_t__,int,scalar_t__) ; 

__attribute__((used)) static void FUNC8(
	iv_index_t key_index,	  
	iv_index_t value_index)
{
	ipc_voucher_attr_control_t ivac;
	ipc_voucher_attr_manager_t ivam;
	mach_voucher_attr_value_handle_t value;
	mach_voucher_attr_value_reference_t made;
	mach_voucher_attr_key_t key;
	iv_index_t hash_index;
	ivac_entry_t ivace;
	kern_return_t kr;

	/* cant release the default value */
	if (IV_UNUSED_VALINDEX == value_index)
		return;

	FUNC6(key_index, FALSE, &ivam, &ivac);
	FUNC0(IVAC_NULL != ivac);
	FUNC0(IVAM_NULL != ivam);

	FUNC3(ivac);
	FUNC0(value_index < ivac->ivac_table_size);
	ivace = &ivac->ivac_table[value_index];

	FUNC0(0 < ivace->ivace_refs);

	/* cant release persistent values */
	if (ivace->ivace_persist) {
		FUNC5(ivac);
		return;
	}

	if (0 < --ivace->ivace_refs) {
		FUNC5(ivac);
		return;
	}

	key = FUNC2(key_index);
	FUNC0(MACH_VOUCHER_ATTR_KEY_NONE != key);

	/*
	 * if last return reply is still pending,
	 * let it handle this later return when
	 * the previous reply comes in.
	 */
	if (ivace->ivace_releasing) {
		FUNC5(ivac);
		return;
	}

	/* claim releasing */
	ivace->ivace_releasing = TRUE;
	value = ivace->ivace_value;

 redrive:
	FUNC0(value == ivace->ivace_value);
	FUNC0(!ivace->ivace_free);
	made = ivace->ivace_made;
	FUNC5(ivac);

	/* callout to manager's release_value */
	kr = (ivam->ivam_release_value)(ivam, key, value, made);

	/* recalculate entry address as table may have changed */
	FUNC3(ivac);
	ivace = &ivac->ivac_table[value_index];
	FUNC0(value == ivace->ivace_value);

	/*
	 * new made values raced with this return.  If the
	 * manager OK'ed the prior release, we have to start
	 * the made numbering over again (pretend the race
	 * didn't happen). If the entry has zero refs again,
	 * re-drive the release.
	 */
	if (ivace->ivace_made != made) {
		if (KERN_SUCCESS == kr)
			ivace->ivace_made -= made;

		if (0 == ivace->ivace_refs)
			goto redrive;

		ivace->ivace_releasing = FALSE;
		FUNC5(ivac);
		return;
	} else {
		/*
		 * If the manager returned FAILURE, someone took a 
		 * reference on the value but have not updated the ivace,
		 * release the lock and return since thread who got
		 * the new reference will update the ivace and will have
		 * non-zero reference on the value.
		 */
		if (KERN_SUCCESS != kr) {
			ivace->ivace_releasing = FALSE;
			FUNC5(ivac);
			return;
		}
	}

	FUNC0(0 == ivace->ivace_refs);

	/*
	 * going away - remove entry from its hash
	 * If its at the head of the hash bucket list (common), unchain
	 * at the head. Otherwise walk the chain until the next points
	 * at this entry, and remove it from the the list there.
	 */
	hash_index = FUNC1(key_index, value);
	if (ivac->ivac_table[hash_index].ivace_index == value_index) {
		ivac->ivac_table[hash_index].ivace_index = ivace->ivace_next;
	} else {
		hash_index = ivac->ivac_table[hash_index].ivace_index;
		FUNC0(IV_HASH_END != hash_index);
		while (ivac->ivac_table[hash_index].ivace_next != value_index) {
			hash_index = ivac->ivac_table[hash_index].ivace_next;
			FUNC0(IV_HASH_END != hash_index);
		}
		ivac->ivac_table[hash_index].ivace_next = ivace->ivace_next;
	}

	/* Put this entry on the freelist */
	ivace->ivace_value = 0xdeadc0dedeadc0de;
	ivace->ivace_releasing = FALSE;
	ivace->ivace_free = TRUE;
	ivace->ivace_made = 0;
	ivace->ivace_next = ivac->ivac_freelist;
	ivac->ivac_freelist = value_index;
	FUNC5(ivac);

	/* release the reference this value held on its cache control */
	FUNC4(ivac);

	return;
}