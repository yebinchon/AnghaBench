#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {struct TYPE_7__* dthb_next; void* dthb_chain; } ;
typedef  TYPE_1__ dtrace_hashbucket_t ;
struct TYPE_8__ {int dth_size; int dth_mask; TYPE_1__** dth_tab; } ;
typedef  TYPE_2__ dtrace_hash_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_2__*,void*) ; 
 int /*<<< orphan*/  KM_SLEEP ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**,int) ; 
 TYPE_1__** FUNC3 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(dtrace_hash_t *hash)
{
	int size = hash->dth_size, i, ndx;
	int new_size = hash->dth_size << 1;
	int new_mask = new_size - 1;
	dtrace_hashbucket_t **new_tab, *bucket, *next;

	FUNC0((new_size & new_mask) == 0);

	new_tab = FUNC3(new_size * sizeof (void *), KM_SLEEP);

	for (i = 0; i < size; i++) {
		for (bucket = hash->dth_tab[i]; bucket != NULL; bucket = next) {
			void *elm = bucket->dthb_chain;

			FUNC0(elm != NULL);
			ndx = FUNC1(hash, elm) & new_mask;

			next = bucket->dthb_next;
			bucket->dthb_next = new_tab[ndx];
			new_tab[ndx] = bucket;
		}
	}

	FUNC2(hash->dth_tab, hash->dth_size * sizeof (void *));
	hash->dth_tab = new_tab;
	hash->dth_size = new_size;
	hash->dth_mask = new_mask;
}