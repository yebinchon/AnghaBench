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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  M_PROC ; 
 int /*<<< orphan*/  allproc ; 
 void* FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int maxproc ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  pgrphash ; 
 void* pgrphashtbl ; 
 int /*<<< orphan*/  pidhash ; 
 void* pidhashtbl ; 
 int /*<<< orphan*/  sesshash ; 
 void* sesshashtbl ; 
 int /*<<< orphan*/  uihash ; 
 void* uihashtbl ; 
 int /*<<< orphan*/  zombproc ; 

void
FUNC3(void)
{
	FUNC0(&allproc);
	FUNC0(&zombproc);
	pidhashtbl = FUNC1(maxproc / 4, M_PROC, &pidhash);
	pgrphashtbl = FUNC1(maxproc / 4, M_PROC, &pgrphash);
	sesshashtbl = FUNC1(maxproc / 4, M_PROC, &sesshash);
	uihashtbl = FUNC1(maxproc / 16, M_PROC, &uihash);
#if CONFIG_PERSONAS
	personas_bootstrap();
#endif
}