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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  scalar_t__ mbuf_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,...) ; 

void
FUNC6(mbuf_t m, const char *prefix, const char *suffix)
{
	if (m)
		FUNC5("%spktlen: %u rcvif: 0x%llx header: 0x%llx "
		    "nextpkt: 0x%llx%s",
		    prefix ? prefix : "", (unsigned int)FUNC3(m),
		    (uint64_t)FUNC0(FUNC4(m)),
		    (uint64_t)FUNC0(FUNC2(m)),
		    (uint64_t)FUNC0(FUNC1(m)),
		    suffix ? suffix : "");
	else
		FUNC5("%s<NULL>%s\n", prefix, suffix);
}