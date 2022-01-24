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
typedef  scalar_t__ Oid ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ InvalidOid ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 scalar_t__ FUNC3 (char const*,int) ; 

__attribute__((used)) static void
FUNC4(const char *nspname, Oid *cachedOid)
{
	/* force callbacks to be registered, so we always get notified upon changes */
	FUNC0();

	if (*cachedOid == InvalidOid)
	{
		*cachedOid = FUNC3(nspname, true);

		if (*cachedOid == InvalidOid)
		{
			FUNC1(ERROR, (FUNC2(
								"cache lookup failed for namespace %s, called too early?",
								nspname)));
		}
	}
}