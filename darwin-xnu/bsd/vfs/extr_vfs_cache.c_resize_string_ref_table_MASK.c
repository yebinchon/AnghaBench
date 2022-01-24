#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
typedef  size_t u_long ;
struct stringhead {TYPE_2__* lh_first; } ;
struct TYPE_4__ {TYPE_2__* le_next; } ;
struct TYPE_5__ {TYPE_1__ hash_chain; scalar_t__ str; } ;
typedef  TYPE_2__ string_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct stringhead*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct stringhead*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_CACHE ; 
 int filled_buckets ; 
 int /*<<< orphan*/  hash_chain ; 
 size_t FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 struct stringhead* FUNC3 (int,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 struct stringhead* string_ref_table ; 
 int string_table_mask ; 
 int /*<<< orphan*/  strtable_rw_lock ; 

__attribute__((used)) static void
FUNC7(void)
{
	struct stringhead *new_table;
	struct stringhead *old_table;
	struct stringhead *old_head, *head;
	string_t          *entry, *next;
	uint32_t           i, hashval;
	u_long             new_mask, old_mask;

	/*
	 * need to hold the table lock exclusively
	 * in order to grow the table... need to recheck
	 * the need to resize again after we've taken
	 * the lock exclusively in case some other thread
	 * beat us to the punch
	 */
	FUNC5(strtable_rw_lock);

	if (4 * filled_buckets < ((string_table_mask + 1) * 3)) {
		FUNC4(strtable_rw_lock);
		return;
	}
	new_table = FUNC3((string_table_mask + 1) * 2, M_CACHE, &new_mask);

	if (new_table == NULL) {
		FUNC6("failed to resize the hash table.\n");
		FUNC4(strtable_rw_lock);
		return;
	}

	// do the switch!
	old_table         = string_ref_table;
	string_ref_table  = new_table;
	old_mask          = string_table_mask;
	string_table_mask = new_mask;
	filled_buckets	  = 0;

	// walk the old table and insert all the entries into
	// the new table
	//
	for (i = 0; i <= old_mask; i++) {
		old_head = &old_table[i];
		for (entry = old_head->lh_first; entry != NULL; entry = next) {
			hashval = FUNC2((const char *)entry->str, 0);
			head = &string_ref_table[hashval & string_table_mask];
			if (head->lh_first == NULL) {
				filled_buckets++;
			}
			next = entry->hash_chain.le_next;
			FUNC1(head, entry, hash_chain);
		}
	}
	FUNC4(strtable_rw_lock);

	FUNC0(old_table, M_CACHE);
}