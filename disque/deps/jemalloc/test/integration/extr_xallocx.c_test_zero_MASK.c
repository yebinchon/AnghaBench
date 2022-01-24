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
 int FILL_BYTE ; 
 int /*<<< orphan*/  MALLOCX_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,size_t,...) ; 
 int /*<<< orphan*/  FUNC1 (void*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t,char*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,int,size_t) ; 
 size_t FUNC6 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*,int,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC8 (void*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC9(size_t szmin, size_t szmax)
{
	size_t sz, nsz;
	void *p;
#define	FILL_BYTE 0x7aU

	sz = szmax;
	p = FUNC4(sz, MALLOCX_ZERO);
	FUNC1(p, "Unexpected mallocx() error");
	FUNC0(FUNC7(p, 0x00, 0, sz), "Memory not filled: sz=%zu",
	    sz);

	/*
	 * Fill with non-zero so that non-debug builds are more likely to detect
	 * errors.
	 */
	FUNC5(p, FILL_BYTE, sz);
	FUNC0(FUNC7(p, FILL_BYTE, 0, sz),
	    "Memory not filled: sz=%zu", sz);

	/* Shrink in place so that we can expect growing in place to succeed. */
	sz = szmin;
	FUNC2(FUNC8(p, sz, 0, MALLOCX_ZERO), sz,
	    "Unexpected xallocx() error");
	FUNC0(FUNC7(p, FILL_BYTE, 0, sz),
	    "Memory not filled: sz=%zu", sz);

	for (sz = szmin; sz < szmax; sz = nsz) {
		nsz = FUNC6(sz+1, MALLOCX_ZERO);
		FUNC2(FUNC8(p, sz+1, 0, MALLOCX_ZERO), nsz,
		    "Unexpected xallocx() failure");
		FUNC0(FUNC7(p, FILL_BYTE, 0, sz),
		    "Memory not filled: sz=%zu", sz);
		FUNC0(FUNC7(p, 0x00, sz, nsz-sz),
		    "Memory not filled: sz=%zu, nsz-sz=%zu", sz, nsz-sz);
		FUNC5((void *)((uintptr_t)p + sz), FILL_BYTE, nsz-sz);
		FUNC0(FUNC7(p, FILL_BYTE, 0, nsz),
		    "Memory not filled: nsz=%zu", nsz);
	}

	FUNC3(p, 0);
}