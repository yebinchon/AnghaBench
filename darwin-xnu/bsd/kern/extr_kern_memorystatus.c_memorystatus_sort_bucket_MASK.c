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
struct TYPE_2__ {scalar_t__ count; } ;

/* Variables and functions */
 int COALITION_SORT_DEFAULT ; 
 int EINVAL ; 
#define  JETSAM_PRIORITY_FOREGROUND 128 
 int JETSAM_SORT_DEFAULT ; 
 unsigned int MEMSTAT_BUCKET_COUNT ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 TYPE_1__* memstat_bucket ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(unsigned int bucket_index, int sort_order)
{
	int coal_sort_order;

	/*
	 * Verify the jetsam priority
	 */
        if (bucket_index >= MEMSTAT_BUCKET_COUNT) {
		return(EINVAL);
        }

#if DEVELOPMENT || DEBUG
        if (sort_order == JETSAM_SORT_DEFAULT) {
		coal_sort_order = COALITION_SORT_DEFAULT;
	} else {
		coal_sort_order = sort_order;		/* only used for testing scenarios */
	}
#else
	/* Verify default */
        if (sort_order == JETSAM_SORT_DEFAULT) {
		coal_sort_order = COALITION_SORT_DEFAULT;
	} else {
		return(EINVAL);
	}
#endif

	FUNC2();
	
	if (memstat_bucket[bucket_index].count == 0) {
		FUNC3();
		return (0);
	}

	switch (bucket_index) {
	case JETSAM_PRIORITY_FOREGROUND:
		if (FUNC0(bucket_index, coal_sort_order) == 0) {
			/*
			 * Fall back to per process sorting when zero coalitions are found.
			 */
			FUNC1(bucket_index);
		}
		break;
	default:
		FUNC1(bucket_index);
		break;
	}
	FUNC3();
	
        return(0);
}