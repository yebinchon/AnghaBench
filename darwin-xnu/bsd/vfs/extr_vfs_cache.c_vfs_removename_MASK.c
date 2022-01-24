#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct stringhead {TYPE_2__* lh_first; } ;
struct TYPE_5__ {TYPE_2__* le_next; } ;
struct TYPE_6__ {char const* str; scalar_t__ refcount; TYPE_1__ hash_chain; } ;
typedef  TYPE_2__ string_t ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_TEMP ; 
 size_t NUM_STRCACHE_LOCKS ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  filled_buckets ; 
 int /*<<< orphan*/  hash_chain ; 
 size_t FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * strcache_mtx_locks ; 
 struct stringhead* string_ref_table ; 
 size_t string_table_mask ; 
 int /*<<< orphan*/  strtable_rw_lock ; 

int
FUNC8(const char *nameref)
{
	struct stringhead *head;
	string_t          *entry;
	uint32_t           hashval;
	uint32_t	   hash_index;
        uint32_t	   lock_index;
	int		   retval = ENOENT;

	hashval = FUNC3(nameref, 0);

	/*
	 * take this lock 'shared' to keep the hash stable
	 * if someone else decides to grow the pool they
	 * will take this lock exclusively
	 */
	FUNC7(strtable_rw_lock);
	/*
	 * must compute the head behind the table lock
	 * since the size and location of the table
	 * can change on the fly
	 */
	hash_index = hashval & string_table_mask;
	lock_index = hash_index % NUM_STRCACHE_LOCKS;

	head = &string_ref_table[hash_index];

	FUNC4(&strcache_mtx_locks[lock_index]);

	for (entry = head->lh_first; entry != NULL; entry = entry->hash_chain.le_next) {
		if (entry->str == nameref) {
			entry->refcount--;

			if (entry->refcount == 0) {
				FUNC1(entry, hash_chain);

				if (head->lh_first == NULL) {
					FUNC2(-1, &filled_buckets);
				}
			} else {
				entry = NULL;
			}
			retval = 0;
			break;
		}
	}
	FUNC5(&strcache_mtx_locks[lock_index]);
	FUNC6(strtable_rw_lock);

	if (entry != NULL)
		FUNC0(entry, M_TEMP);

	return retval;
}