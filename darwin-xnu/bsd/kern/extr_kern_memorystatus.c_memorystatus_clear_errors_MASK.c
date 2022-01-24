#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* proc_t ;
struct TYPE_5__ {int p_memstat_state; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  BSD_MEMSTAT_CLEAR_ERRORS ; 
 int /*<<< orphan*/  DBG_BSD_MEMSTAT ; 
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int P_MEMSTAT_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_1__* FUNC2 (unsigned int*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (unsigned int*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void 
FUNC6(void)
{
	proc_t p;
	unsigned int i = 0;

	FUNC1(FUNC0(DBG_BSD_MEMSTAT, BSD_MEMSTAT_CLEAR_ERRORS) | DBG_FUNC_START, 0, 0, 0, 0, 0);
    
	FUNC4();
    
	p = FUNC2(&i, TRUE);
	while (p) {
		if (p->p_memstat_state & P_MEMSTAT_ERROR) {
			p->p_memstat_state &= ~P_MEMSTAT_ERROR;
		}
		p = FUNC3(&i, p, TRUE);
	}
	
	FUNC5();

	FUNC1(FUNC0(DBG_BSD_MEMSTAT, BSD_MEMSTAT_CLEAR_ERRORS) | DBG_FUNC_END, 0, 0, 0, 0, 0);
}