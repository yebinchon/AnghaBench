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
typedef  TYPE_1__* proc_t ;
typedef  scalar_t__ pid_t ;
struct TYPE_10__ {int /*<<< orphan*/  list; } ;
typedef  TYPE_2__ memstat_bucket_t ;
struct TYPE_9__ {scalar_t__ p_pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 unsigned int MEMSTAT_BUCKET_COUNT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (unsigned int*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (unsigned int*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* memstat_bucket ; 
 int /*<<< orphan*/  p_memstat_list ; 

__attribute__((used)) static int
FUNC4(unsigned int bucket_index, pid_t *pid_list, int list_sz)
{
	memstat_bucket_t *current_bucket;
	int i;
	int found_pids = 0;

	if ((pid_list == NULL) || (list_sz <= 0)) {
		return(0);
	}

	if (bucket_index >= MEMSTAT_BUCKET_COUNT) {
                return(0);
        }

	current_bucket = &memstat_bucket[bucket_index];
	for (i=0; i < list_sz; i++) {
		unsigned int b = bucket_index;
		proc_t p = NULL;
		proc_t aProc = NULL;
		pid_t  aPid;
		int list_index;

		list_index = ((list_sz - 1) - i);
                aPid = pid_list[list_index];

                /* never search beyond bucket_index provided */
                p = FUNC2(&b, FALSE);
                while (p) {
                        if (p->p_pid == aPid) {
                                aProc = p;
                                break;
                        }
                        p = FUNC3(&b, p, FALSE);
                }

                if (aProc == NULL) {
			/* pid not found in this band, just skip it */
                        continue;
                } else {
                        FUNC1(&current_bucket->list, aProc, p_memstat_list);
                        FUNC0(&current_bucket->list, aProc, p_memstat_list);
			found_pids++;
                }
        }
	return(found_pids);
}