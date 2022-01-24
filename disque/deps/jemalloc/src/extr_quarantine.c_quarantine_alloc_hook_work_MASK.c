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
typedef  int /*<<< orphan*/  tsd_t ;
typedef  int /*<<< orphan*/  quarantine_t ;

/* Variables and functions */
 int /*<<< orphan*/  LG_MAXOBJS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void
FUNC6(tsd_t *tsd)
{
	quarantine_t *quarantine;

	if (!FUNC3(tsd))
		return;

	quarantine = FUNC1(tsd, LG_MAXOBJS_INIT);
	/*
	 * Check again whether quarantine has been initialized, because
	 * quarantine_init() may have triggered recursive initialization.
	 */
	if (FUNC4(tsd) == NULL)
		FUNC5(tsd, quarantine);
	else
		FUNC0(tsd, quarantine, FUNC2(tsd, false), true);
}