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

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  arena_dalloc_junk_large ; 
 int /*<<< orphan*/  arena_dalloc_junk_large_intercept ; 
 int /*<<< orphan*/  arena_dalloc_junk_large_orig ; 
 int /*<<< orphan*/  arena_dalloc_junk_small ; 
 int /*<<< orphan*/  arena_dalloc_junk_small_intercept ; 
 int /*<<< orphan*/  arena_dalloc_junk_small_orig ; 
 int /*<<< orphan*/  FUNC1 (char,int,char*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (void*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  huge_dalloc_junk ; 
 int /*<<< orphan*/  huge_dalloc_junk_intercept ; 
 int /*<<< orphan*/  huge_dalloc_junk_orig ; 
 scalar_t__ FUNC5 (size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ opt_junk_alloc ; 
 scalar_t__ opt_junk_free ; 
 scalar_t__ FUNC6 (char*,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC7 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ saw_junking ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 size_t FUNC9 (char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC10(size_t sz_min, size_t sz_max)
{
	char *s;
	size_t sz_prev, sz, i;

	if (opt_junk_free) {
		arena_dalloc_junk_small_orig = arena_dalloc_junk_small;
		arena_dalloc_junk_small = arena_dalloc_junk_small_intercept;
		arena_dalloc_junk_large_orig = arena_dalloc_junk_large;
		arena_dalloc_junk_large = arena_dalloc_junk_large_intercept;
		huge_dalloc_junk_orig = huge_dalloc_junk;
		huge_dalloc_junk = huge_dalloc_junk_intercept;
	}

	sz_prev = 0;
	s = (char *)FUNC5(sz_min, 0);
	FUNC2((void *)s, "Unexpected mallocx() failure");

	for (sz = FUNC7(s, 0); sz <= sz_max;
	    sz_prev = sz, sz = FUNC7(s, 0)) {
		if (sz_prev > 0) {
			FUNC1(s[0], 'a',
			    "Previously allocated byte %zu/%zu is corrupted",
			    FUNC0(0), sz_prev);
			FUNC1(s[sz_prev-1], 'a',
			    "Previously allocated byte %zu/%zu is corrupted",
			    sz_prev-1, sz_prev);
		}

		for (i = sz_prev; i < sz; i++) {
			if (opt_junk_alloc) {
				FUNC1(s[i], 0xa5,
				    "Newly allocated byte %zu/%zu isn't "
				    "junk-filled", i, sz);
			}
			s[i] = 'a';
		}

		if (FUNC9(s, sz+1, 0, 0) == sz) {
			FUNC8(s);
			s = (char *)FUNC6(s, sz+1, 0);
			FUNC2((void *)s,
			    "Unexpected rallocx() failure");
			FUNC3(!opt_junk_free || saw_junking,
			    "Expected region of size %zu to be junk-filled",
			    sz);
		}
	}

	FUNC8(s);
	FUNC4(s, 0);
	FUNC3(!opt_junk_free || saw_junking,
	    "Expected region of size %zu to be junk-filled", sz);

	if (opt_junk_free) {
		arena_dalloc_junk_small = arena_dalloc_junk_small_orig;
		arena_dalloc_junk_large = arena_dalloc_junk_large_orig;
		huge_dalloc_junk = huge_dalloc_junk_orig;
	}
}