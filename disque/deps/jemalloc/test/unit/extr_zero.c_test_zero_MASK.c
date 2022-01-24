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
 int /*<<< orphan*/  FUNC1 (char,int,char*,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (void*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,size_t,int /*<<< orphan*/ ) ; 
 size_t FUNC6 (char*,int /*<<< orphan*/ ) ; 
 size_t FUNC7 (char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(size_t sz_min, size_t sz_max)
{
	char *s;
	size_t sz_prev, sz, i;

	sz_prev = 0;
	s = (char *)FUNC4(sz_min, 0);
	FUNC2((void *)s, "Unexpected mallocx() failure");

	for (sz = FUNC6(s, 0); sz <= sz_max;
	    sz_prev = sz, sz = FUNC6(s, 0)) {
		if (sz_prev > 0) {
			FUNC1(s[0], 'a',
			    "Previously allocated byte %zu/%zu is corrupted",
			    FUNC0(0), sz_prev);
			FUNC1(s[sz_prev-1], 'a',
			    "Previously allocated byte %zu/%zu is corrupted",
			    sz_prev-1, sz_prev);
		}

		for (i = sz_prev; i < sz; i++) {
			FUNC1(s[i], 0x0,
			    "Newly allocated byte %zu/%zu isn't zero-filled",
			    i, sz);
			s[i] = 'a';
		}

		if (FUNC7(s, sz+1, 0, 0) == sz) {
			s = (char *)FUNC5(s, sz+1, 0);
			FUNC2((void *)s,
			    "Unexpected rallocx() failure");
		}
	}

	FUNC3(s, 0);
}