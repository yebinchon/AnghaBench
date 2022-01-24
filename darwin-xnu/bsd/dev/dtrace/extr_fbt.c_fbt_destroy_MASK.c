#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* fbtp_next; struct TYPE_4__* fbtp_hashnext; int /*<<< orphan*/  fbtp_patchpoint; } ;
typedef  TYPE_1__ fbt_probe_t ;
typedef  int /*<<< orphan*/  dtrace_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__** fbt_probetab ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC3(void *arg, dtrace_id_t id, void *parg)
{
#pragma unused(arg,id)
	fbt_probe_t *fbt = parg, *next, *hash, *last;
	int ndx;

	do {
		/*
		 * Now we need to remove this probe from the fbt_probetab.
		 */
		ndx = FUNC1(fbt->fbtp_patchpoint);
		last = NULL;
		hash = fbt_probetab[ndx];

		while (hash != fbt) {
			FUNC0(hash != NULL);
			last = hash;
			hash = hash->fbtp_hashnext;
		}

		if (last != NULL) {
			last->fbtp_hashnext = fbt->fbtp_hashnext;
		} else {
			fbt_probetab[ndx] = fbt->fbtp_hashnext;
		}

		next = fbt->fbtp_next;
		FUNC2(fbt, sizeof (fbt_probe_t));

		fbt = next;
	} while (fbt != NULL);
}