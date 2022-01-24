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
typedef  int /*<<< orphan*/  spl_t ;
typedef  int /*<<< orphan*/  pmap_t ;

/* Variables and functions */
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,...) ; 
 int /*<<< orphan*/  PMAP__SWITCH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void
FUNC8(pmap_t tpmap)
{
        spl_t	s;

	FUNC1(FUNC0(PMAP__SWITCH) | DBG_FUNC_START, FUNC2(tpmap));
	s = FUNC6();		/* Make sure interruptions are disabled */
	FUNC5(tpmap, FUNC4(), FUNC3());
	FUNC7(s);
	FUNC1(FUNC0(PMAP__SWITCH) | DBG_FUNC_END);
}