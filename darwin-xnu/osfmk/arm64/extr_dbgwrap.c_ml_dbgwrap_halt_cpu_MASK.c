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
typedef  scalar_t__ uint32_t ;
typedef  int /*<<< orphan*/  dbgwrap_status_t ;
typedef  int /*<<< orphan*/  dbgwrap_reg_t ;
struct TYPE_3__ {scalar_t__* coresight_base; } ;
typedef  TYPE_1__ cpu_data_t ;

/* Variables and functions */
 size_t CORESIGHT_UTT ; 
 int /*<<< orphan*/  DBGWRAP_DBGHALT ; 
 int /*<<< orphan*/  DBGWRAP_ERR_INPROGRESS ; 
 int /*<<< orphan*/  DBGWRAP_ERR_SELF_HALT ; 
 int /*<<< orphan*/  DBGWRAP_ERR_UNSUPPORTED ; 
 scalar_t__ DBGWRAP_REG_OFFSET ; 
 int /*<<< orphan*/  DBGWRAP_SUCCESS ; 
 int /*<<< orphan*/  DBGWRAP_WARN_ALREADY_HALTED ; 
 TYPE_1__* FUNC0 (int) ; 
 int FUNC1 () ; 
 scalar_t__ halt_from_cpu ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,unsigned int,scalar_t__*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

dbgwrap_status_t
FUNC5(int cpu_index, uint64_t timeout_ns)
{
	cpu_data_t *cdp = FUNC0(cpu_index);
	if ((cdp == NULL) || (cdp->coresight_base[CORESIGHT_UTT] == 0))
		return DBGWRAP_ERR_UNSUPPORTED;

	/* Only one cpu is allowed to initiate the halt sequence, to prevent cpus from cross-halting
	 * each other.  The first cpu to request a halt may then halt any and all other cpus besides itself. */
	int curcpu = FUNC1();
	if (cpu_index == curcpu)
		return DBGWRAP_ERR_SELF_HALT;

	if (!FUNC2((uint32_t)-1, (unsigned int)curcpu, &halt_from_cpu) &&
	    (halt_from_cpu != (uint32_t)curcpu))
		return DBGWRAP_ERR_INPROGRESS;

	volatile dbgwrap_reg_t *dbgWrapReg = (volatile dbgwrap_reg_t *)(cdp->coresight_base[CORESIGHT_UTT] + DBGWRAP_REG_OFFSET);

	if (FUNC3(cpu_index))
		return DBGWRAP_WARN_ALREADY_HALTED;

	/* Clear all other writable bits besides dbgHalt; none of the power-down or reset bits must be set. */
	*dbgWrapReg = DBGWRAP_DBGHALT;

	if (timeout_ns != 0) {
		dbgwrap_status_t stat = FUNC4(cpu_index, timeout_ns);
		return stat;
	}
	else
		return DBGWRAP_SUCCESS;
}