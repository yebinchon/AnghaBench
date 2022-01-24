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
typedef  int uint64_t ;
typedef  scalar_t__ mbuf_t ;

/* Variables and functions */
 int MBUF_PKTHDR ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,char*,char const*) ; 

void
FUNC10(mbuf_t m, const char *prefix, const char *suffix)
{
	if (m) {
		FUNC8("%s0x%llx type: %u flags: 0x%x len: %u data: 0x%llx "
		    "maxlen: %u datastart: 0x%llx next: 0x%llx%s",
		    prefix ? prefix : "", (uint64_t)FUNC0(m),
		    FUNC7(m), FUNC3(m), (unsigned int)FUNC4(m),
		    (uint64_t)FUNC0(FUNC1(m)),
		    (unsigned int)FUNC5(m),
		    (uint64_t)FUNC0(FUNC2(m)),
		    (uint64_t)FUNC0(FUNC6(m)),
		    !suffix || (FUNC3(m) & MBUF_PKTHDR) ? "" : suffix);
		if ((FUNC3(m) & MBUF_PKTHDR))
			FUNC9(m, " ", suffix);
	} else
		FUNC8("%s<NULL>%s\n", prefix, suffix);
}