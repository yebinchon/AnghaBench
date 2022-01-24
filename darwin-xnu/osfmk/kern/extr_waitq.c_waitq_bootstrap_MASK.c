#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  vm_offset_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  tmp32 ;
struct wq_stats {int dummy; } ;
struct waitq_set {int dummy; } ;
struct waitq {int dummy; } ;
typedef  scalar_t__ kern_return_t ;

/* Variables and functions */
 int DEFAULT_MIN_FREE_TABLE_ELEM ; 
 scalar_t__ KERN_SUCCESS ; 
 int KMA_KOBJECT ; 
 int KMA_NOPAGEWAIT ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC1 (char*,int*,int) ; 
 int FUNC2 (int,int) ; 
 int SYNC_POLICY_DISABLE_IRQ ; 
 int SYNC_POLICY_FIFO ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  VM_KERN_MEMORY_WAITQ ; 
 int WAITQ_SET_MAX ; 
 int /*<<< orphan*/  Z_NOENCRYPT ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int g_min_free_table_elem ; 
 int g_num_waitqs ; 
 int /*<<< orphan*/  g_waitq_stats ; 
 int /*<<< orphan*/ * global_waitqs ; 
 int /*<<< orphan*/  kernel_map ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,scalar_t__,int) ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  waitq_set_zone ; 
 int /*<<< orphan*/  FUNC9 (char*,int,...) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int,int,int,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC14(void)
{
	kern_return_t kret;
	uint32_t whsize, qsz, tmp32;

	g_min_free_table_elem = DEFAULT_MIN_FREE_TABLE_ELEM;
	if (FUNC1("wqt_min_free", &tmp32, sizeof(tmp32)) == TRUE)
		g_min_free_table_elem = tmp32;
	FUNC9("Minimum free table elements: %d", tmp32);

	/*
	 * Determine the amount of memory we're willing to reserve for
	 * the waitqueue hash table
	 */
	whsize = FUNC7();

	/* Determine the number of waitqueues we can fit. */
	qsz = sizeof(struct waitq);
	whsize = FUNC2(whsize, qsz);
	g_num_waitqs = whsize / qsz;

	/*
	 * The hash algorithm requires that this be a power of 2, so we
	 * just mask off all the low-order bits.
	 */
	for (uint32_t i = 0; i < 31; i++) {
		uint32_t bit = (1 << i);
		if ((g_num_waitqs & bit) == g_num_waitqs)
			break;
		g_num_waitqs &= ~bit;
	}
	FUNC3(g_num_waitqs > 0);

	/* Now determine how much memory we really need. */
	whsize = FUNC0(g_num_waitqs * qsz, PAGE_SIZE);

	FUNC9("allocating %d global queues  (%d bytes)", g_num_waitqs, whsize);
	kret = FUNC4(kernel_map, (vm_offset_t *)&global_waitqs,
				      whsize, 0, KMA_KOBJECT|KMA_NOPAGEWAIT, VM_KERN_MEMORY_WAITQ);
	if (kret != KERN_SUCCESS || global_waitqs == NULL)
		FUNC6("kernel_memory_allocate() failed to alloc global_waitqs"
		      ", error: %d, whsize: 0x%x", kret, whsize);

#if CONFIG_WAITQ_STATS
	whsize = P2ROUNDUP(g_num_waitqs * sizeof(struct wq_stats), PAGE_SIZE);
	kret = kernel_memory_allocate(kernel_map, (vm_offset_t *)&g_waitq_stats,
				      whsize, 0, KMA_KOBJECT|KMA_NOPAGEWAIT, VM_KERN_MEMORY_WAITQ);
	if (kret != KERN_SUCCESS || global_waitqs == NULL)
		panic("kernel_memory_allocate() failed to alloc g_waitq_stats"
		      ", error: %d, whsize: 0x%x", kret, whsize);
	memset(g_waitq_stats, 0, whsize);
#endif

	for (uint32_t i = 0; i < g_num_waitqs; i++) {
		FUNC8(&global_waitqs[i], SYNC_POLICY_FIFO|SYNC_POLICY_DISABLE_IRQ);
	}

	waitq_set_zone = FUNC12(sizeof(struct waitq_set),
			       WAITQ_SET_MAX * sizeof(struct waitq_set),
			       sizeof(struct waitq_set),
			       "waitq sets");
	FUNC13(waitq_set_zone, Z_NOENCRYPT, TRUE);

	/* initialize the global waitq link table */
	FUNC10();

	/* initialize the global waitq prepost table */
	FUNC11();
}