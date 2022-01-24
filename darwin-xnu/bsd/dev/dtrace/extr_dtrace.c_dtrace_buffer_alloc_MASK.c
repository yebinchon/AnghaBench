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
typedef  size_t processorid_t ;
struct TYPE_5__ {size_t cpu_id; struct TYPE_5__* cpu_next; } ;
typedef  TYPE_1__ dtrace_cpu_t ;
struct TYPE_6__ {size_t dtb_size; size_t dtb_cur_limit; size_t dtb_limit; int dtb_flags; int /*<<< orphan*/ * dtb_xamot; int /*<<< orphan*/ * dtb_tomax; scalar_t__ dtb_drops; scalar_t__ dtb_offset; } ;
typedef  TYPE_2__ dtrace_buffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ B_FALSE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int DTRACEBUF_NOSWITCH ; 
 size_t DTRACE_CPUALL ; 
 int EFBIG ; 
 int ENOMEM ; 
 int /*<<< orphan*/  KM_NOSLEEP ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int /*<<< orphan*/  PRIV_ALL ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_1__* cpu_list ; 
 int /*<<< orphan*/  cpu_lock ; 
 scalar_t__ FUNC4 (size_t) ; 
 size_t dtrace_buffer_memory_inuse ; 
 size_t dtrace_buffer_memory_maxsize ; 
 int /*<<< orphan*/  dtrace_lock ; 
 scalar_t__ dtrace_nonroot_maxsize ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,size_t) ; 
 void* FUNC6 (size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC7(dtrace_buffer_t *bufs, size_t limit, size_t size, int flags,
    processorid_t cpu)
{
	dtrace_cpu_t *cp;
	dtrace_buffer_t *buf;
	size_t size_before_alloc = dtrace_buffer_memory_inuse;

	FUNC2(&cpu_lock, LCK_MTX_ASSERT_OWNED);
	FUNC2(&dtrace_lock, LCK_MTX_ASSERT_OWNED);

	if (size > (size_t)dtrace_nonroot_maxsize &&
	    !FUNC3(FUNC1(), PRIV_ALL, B_FALSE))
		return (EFBIG);

	cp = cpu_list;

	do {
		if (cpu != DTRACE_CPUALL && cpu != cp->cpu_id)
			continue;

		buf = &bufs[cp->cpu_id];

		/*
		 * If there is already a buffer allocated for this CPU, it
		 * is only possible that this is a DR event.  In this case,
		 * the buffer size must match our specified size.
		 */
		if (buf->dtb_tomax != NULL) {
			FUNC0(buf->dtb_size == size);
			continue;
		}

		FUNC0(buf->dtb_xamot == NULL);

		/* DTrace, please do not eat all the memory. */
		if (FUNC4(size) == B_FALSE)
			goto err;
		if ((buf->dtb_tomax = FUNC6(size, KM_NOSLEEP)) == NULL)
			goto err;
		dtrace_buffer_memory_inuse += size;

		/* Unsure that limit is always lower than size */
		limit = limit == size ? limit - 1 : limit;
		buf->dtb_cur_limit = limit;
		buf->dtb_limit = limit;
		buf->dtb_size = size;
		buf->dtb_flags = flags;
		buf->dtb_offset = 0;
		buf->dtb_drops = 0;

		if (flags & DTRACEBUF_NOSWITCH)
			continue;

		/* DTrace, please do not eat all the memory. */
		if (FUNC4(size) == B_FALSE)
			goto err;
		if ((buf->dtb_xamot = FUNC6(size, KM_NOSLEEP)) == NULL)
			goto err;
		dtrace_buffer_memory_inuse += size;
	} while ((cp = cp->cpu_next) != cpu_list);

	FUNC0(dtrace_buffer_memory_inuse <= dtrace_buffer_memory_maxsize);

	return (0);

err:
	cp = cpu_list;

	do {
		if (cpu != DTRACE_CPUALL && cpu != cp->cpu_id)
			continue;

		buf = &bufs[cp->cpu_id];

		if (buf->dtb_xamot != NULL) {
			FUNC0(buf->dtb_tomax != NULL);
			FUNC0(buf->dtb_size == size);
			FUNC5(buf->dtb_xamot, size);
		}

		if (buf->dtb_tomax != NULL) {
			FUNC0(buf->dtb_size == size);
			FUNC5(buf->dtb_tomax, size);
		}

		buf->dtb_tomax = NULL;
		buf->dtb_xamot = NULL;
		buf->dtb_size = 0;
	} while ((cp = cp->cpu_next) != cpu_list);

	/* Restore the size saved before allocating memory */
	dtrace_buffer_memory_inuse = size_before_alloc;

	return (ENOMEM);
}