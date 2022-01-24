#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {void* dthb_chain; int /*<<< orphan*/  dthb_len; struct TYPE_10__* dthb_next; } ;
typedef  TYPE_1__ dtrace_hashbucket_t ;
struct TYPE_11__ {int dth_mask; int dth_nbuckets; int dth_size; TYPE_1__** dth_tab; } ;
typedef  TYPE_2__ dtrace_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_2__*,void*,void*) ; 
 void** FUNC2 (TYPE_2__*,void*) ; 
 int /*<<< orphan*/ ** FUNC3 (TYPE_2__*,void*) ; 
 int FUNC4 (TYPE_2__*,void*) ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 TYPE_1__* FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC7(dtrace_hash_t *hash, void *new)
{
	int hashval = FUNC4(hash, new);
	int ndx = hashval & hash->dth_mask;
	dtrace_hashbucket_t *bucket = hash->dth_tab[ndx];
	void **nextp, **prevp;

	for (; bucket != NULL; bucket = bucket->dthb_next) {
		if (FUNC1(hash, bucket->dthb_chain, new))
			goto add;
	}

	if ((hash->dth_nbuckets >> 1) > hash->dth_size) {
		FUNC5(hash);
		FUNC7(hash, new);
		return;
	}

	bucket = FUNC6(sizeof (dtrace_hashbucket_t), KM_SLEEP);
	bucket->dthb_next = hash->dth_tab[ndx];
	hash->dth_tab[ndx] = bucket;
	hash->dth_nbuckets++;

add:
	nextp = FUNC2(hash, new);
	FUNC0(*nextp == NULL && *(FUNC3(hash, new)) == NULL);
	*nextp = bucket->dthb_chain;

	if (bucket->dthb_chain != NULL) {
		prevp = FUNC3(hash, bucket->dthb_chain);
		FUNC0(*prevp == NULL);
		*prevp = new;
	}

	bucket->dthb_chain = new;
	bucket->dthb_len++;
}