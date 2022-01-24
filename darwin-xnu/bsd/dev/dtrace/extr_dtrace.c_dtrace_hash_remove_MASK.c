#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {void* dthb_chain; struct TYPE_9__* dthb_next; } ;
typedef  TYPE_1__ dtrace_hashbucket_t ;
struct TYPE_10__ {int dth_mask; scalar_t__ dth_nbuckets; TYPE_1__** dth_tab; } ;
typedef  TYPE_2__ dtrace_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_2__*,void*,void*) ; 
 void** FUNC2 (TYPE_2__*,void*) ; 
 void** FUNC3 (TYPE_2__*,void*) ; 
 int FUNC4 (TYPE_2__*,void*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC6(dtrace_hash_t *hash, void *elm)
{
	int ndx = FUNC4(hash, elm) & hash->dth_mask;
	dtrace_hashbucket_t *bucket = hash->dth_tab[ndx];

	void **prevp = FUNC3(hash, elm);
	void **nextp = FUNC2(hash, elm);

	/*
	 * Find the bucket that we're removing this elm from.
	 */
	for (; bucket != NULL; bucket = bucket->dthb_next) {
		if (FUNC1(hash, bucket->dthb_chain, elm))
			break;
	}

	FUNC0(bucket != NULL);

	if (*prevp == NULL) {
		if (*nextp == NULL) {
			/*
			 * The removed element was the only element on this
			 * bucket; we need to remove the bucket.
			 */
			dtrace_hashbucket_t *b = hash->dth_tab[ndx];

			FUNC0(bucket->dthb_chain == elm);
			FUNC0(b != NULL);

			if (b == bucket) {
				hash->dth_tab[ndx] = bucket->dthb_next;
			} else {
				while (b->dthb_next != bucket)
					b = b->dthb_next;
				b->dthb_next = bucket->dthb_next;
			}

			FUNC0(hash->dth_nbuckets > 0);
			hash->dth_nbuckets--;
			FUNC5(bucket, sizeof (dtrace_hashbucket_t));
			return;
		}

		bucket->dthb_chain = *nextp;
	} else {
		*(FUNC2(hash, *prevp)) = *nextp;
	}

	if (*nextp != NULL)
		*(FUNC3(hash, *nextp)) = *prevp;
}