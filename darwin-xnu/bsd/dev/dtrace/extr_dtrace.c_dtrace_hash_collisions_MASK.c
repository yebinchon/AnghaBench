#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int dthb_len; int /*<<< orphan*/  dthb_chain; struct TYPE_6__* dthb_next; } ;
typedef  TYPE_1__ dtrace_hashbucket_t ;
struct TYPE_7__ {int dth_mask; TYPE_1__** dth_tab; } ;
typedef  TYPE_2__ dtrace_hash_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,void*) ; 
 int FUNC1 (TYPE_2__*,void*) ; 

__attribute__((used)) static int
FUNC2(dtrace_hash_t *hash, void *template)
{
	int hashval = FUNC1(hash, template);
	int ndx = hashval & hash->dth_mask;
	dtrace_hashbucket_t *bucket = hash->dth_tab[ndx];

	for (; bucket != NULL; bucket = bucket->dthb_next) {
		if (FUNC0(hash, bucket->dthb_chain, template))
			return (bucket->dthb_len);
	}

	return (0);
}