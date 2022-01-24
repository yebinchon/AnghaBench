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
typedef  int /*<<< orphan*/  chunk_hooks_t ;
typedef  int /*<<< orphan*/  arena_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (uintptr_t,size_t) ; 
 size_t FUNC1 (void*) ; 
 int /*<<< orphan*/  CHUNK_HOOKS_INITIALIZER ; 
 int /*<<< orphan*/  FUNC2 (void*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,size_t,int) ; 
 void* FUNC6 (intptr_t) ; 
 size_t chunksize ; 
 size_t chunksize_mask ; 
 void* dss_max ; 
 int /*<<< orphan*/  dss_mtx ; 
 void* dss_prev ; 
 int /*<<< orphan*/  have_dss ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (void*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC10 (void*,size_t) ; 

void *
FUNC11(arena_t *arena, void *new_addr, size_t size, size_t alignment,
    bool *zero, bool *commit)
{
	FUNC4(have_dss);
	FUNC3(size > 0 && (size & chunksize_mask) == 0);
	FUNC3(alignment > 0 && (alignment & chunksize_mask) == 0);

	/*
	 * sbrk() uses a signed increment argument, so take care not to
	 * interpret a huge allocation request as a negative increment.
	 */
	if ((intptr_t)size < 0)
		return (NULL);

	FUNC7(&dss_mtx);
	if (dss_prev != (void *)-1) {

		/*
		 * The loop is necessary to recover from races with other
		 * threads that are using the DSS for something other than
		 * malloc.
		 */
		do {
			void *ret, *cpad, *dss_next;
			size_t gap_size, cpad_size;
			intptr_t incr;
			/* Avoid an unnecessary system call. */
			if (new_addr != NULL && dss_max != new_addr)
				break;

			/* Get the current end of the DSS. */
			dss_max = FUNC6(0);

			/* Make sure the earlier condition still holds. */
			if (new_addr != NULL && dss_max != new_addr)
				break;

			/*
			 * Calculate how much padding is necessary to
			 * chunk-align the end of the DSS.
			 */
			gap_size = (chunksize - FUNC1(dss_max)) &
			    chunksize_mask;
			/*
			 * Compute how much chunk-aligned pad space (if any) is
			 * necessary to satisfy alignment.  This space can be
			 * recycled for later use.
			 */
			cpad = (void *)((uintptr_t)dss_max + gap_size);
			ret = (void *)FUNC0((uintptr_t)dss_max,
			    alignment);
			cpad_size = (uintptr_t)ret - (uintptr_t)cpad;
			dss_next = (void *)((uintptr_t)ret + size);
			if ((uintptr_t)ret < (uintptr_t)dss_max ||
			    (uintptr_t)dss_next < (uintptr_t)dss_max) {
				/* Wrap-around. */
				FUNC8(&dss_mtx);
				return (NULL);
			}
			incr = gap_size + cpad_size + size;
			dss_prev = FUNC6(incr);
			if (dss_prev == dss_max) {
				/* Success. */
				dss_max = dss_next;
				FUNC8(&dss_mtx);
				if (cpad_size != 0) {
					chunk_hooks_t chunk_hooks =
					    CHUNK_HOOKS_INITIALIZER;
					FUNC5(arena,
					    &chunk_hooks, cpad, cpad_size,
					    true);
				}
				if (*zero) {
					FUNC2(
					    ret, size);
					FUNC9(ret, 0, size);
				}
				if (!*commit)
					*commit = FUNC10(ret, size);
				return (ret);
			}
		} while (dss_prev != (void *)-1);
	}
	FUNC8(&dss_mtx);

	return (NULL);
}