#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  dbgwrap_status_t ;
typedef  int dbgwrap_reg_t ;
struct TYPE_3__ {scalar_t__* coresight_base; } ;
typedef  TYPE_1__ cpu_data_t ;

/* Variables and functions */
 size_t CORESIGHT_UTT ; 
 int volatile DBGWRAP_DBGACK ; 
 int /*<<< orphan*/  DBGWRAP_ERR_HALT_TIMEOUT ; 
 int /*<<< orphan*/  DBGWRAP_ERR_UNSUPPORTED ; 
 scalar_t__ DBGWRAP_REG_OFFSET ; 
 int /*<<< orphan*/  DBGWRAP_SUCCESS ; 
 TYPE_1__* FUNC0 (int) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__*) ; 

dbgwrap_status_t
FUNC3(int cpu_index, uint64_t timeout_ns)
{
	cpu_data_t *cdp = FUNC0(cpu_index);
	if ((cdp == NULL) || (cdp->coresight_base[CORESIGHT_UTT] == 0))
		return DBGWRAP_ERR_UNSUPPORTED;

	volatile dbgwrap_reg_t *dbgWrapReg = (volatile dbgwrap_reg_t *)(cdp->coresight_base[CORESIGHT_UTT] + DBGWRAP_REG_OFFSET);

	uint64_t interval;
	FUNC2(timeout_ns, &interval);
	uint64_t deadline = FUNC1() + interval;
	while (!(*dbgWrapReg & DBGWRAP_DBGACK)) {
		if (FUNC1() > deadline)
			return DBGWRAP_ERR_HALT_TIMEOUT; 
	}

	return DBGWRAP_SUCCESS;
}