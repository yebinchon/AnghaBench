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
typedef  scalar_t__ uint64_t ;
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  thread_t ;
typedef  int /*<<< orphan*/  task_t ;

/* Variables and functions */
 scalar_t__ PBT_TIMEOUT_CYCLES ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ pbtcnt ; 
 int pbtcpu ; 
 int /*<<< orphan*/  pbtlock ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 () ; 

void FUNC13(void)
{
	task_t		task = FUNC1();
	thread_t	thread = FUNC2();
	volatile	uint32_t *ppbtcnt = &pbtcnt;
	uint64_t	bt_tsc_timeout;
	int		cn = FUNC0();

	if(pbtcpu != cn) {
		FUNC3(&pbtcnt, 1);
		/* Spin on print backtrace lock, which serializes output
		 * Continue anyway if a timeout occurs.
		 */
		FUNC5(&pbtlock, ~0U);
		pbtcpu = cn;
	}
	
	FUNC11(task);
	FUNC9(task);
	FUNC10(thread);
	FUNC8(task);

	FUNC7(TRUE);
	
	/* Release print backtrace lock, to permit other callers in the
	 * event of panics on multiple processors.
	 */
	FUNC6(&pbtlock);
	FUNC4(&pbtcnt, 1);
	/* Wait for other processors to complete output
	 * Timeout and continue after PBT_TIMEOUT_CYCLES.
	 */
	bt_tsc_timeout = FUNC12() + PBT_TIMEOUT_CYCLES;
	while(*ppbtcnt && (FUNC12() < bt_tsc_timeout));

}