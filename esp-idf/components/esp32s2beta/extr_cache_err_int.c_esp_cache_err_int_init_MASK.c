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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int DPORT_CACHE_DBG_EN ; 
 int DPORT_CACHE_DBG_INT_CLR ; 
 int DPORT_DCACHE_REJECT_INT_ENA ; 
 int DPORT_DCACHE_WRITE_FLASH_INT_ENA ; 
 int DPORT_DC_PRELOAD_SIZE_FAULT_INT_ENA ; 
 int DPORT_DC_SYNC_SIZE_FAULT_INT_ENA ; 
 int DPORT_ICACHE_REJECT_INT_ENA ; 
 int DPORT_IC_PRELOAD_SIZE_FAULT_INT_ENA ; 
 int DPORT_IC_SYNC_SIZE_FAULT_INT_ENA ; 
 int DPORT_MMU_ENTRY_FAULT_INT_ENA ; 
 int /*<<< orphan*/  DPORT_PRO_CACHE_IA_INT_EN_REG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ETS_CACHEERR_INUM ; 
 int /*<<< orphan*/  ETS_CACHE_IA_INTR_SOURCE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

void FUNC5(void)
{
    uint32_t core_id = FUNC4();
    FUNC1(ETS_CACHEERR_INUM);

    // We do not register a handler for the interrupt because it is interrupt
    // level 4 which is not serviceable from C. Instead, xtensa_vectors.S has
    // a call to the panic handler for
    // this interrupt.
    FUNC3(core_id, ETS_CACHE_IA_INTR_SOURCE, ETS_CACHEERR_INUM);

    // Enable invalid cache access interrupt when the cache is disabled.
    // When the interrupt happens, we can not determine the CPU where the
    // invalid cache access has occurred. We enable the interrupt to catch
    // invalid access on both CPUs, but the interrupt is connected to the
    // CPU which happens to call this function.
    // For this reason, panic handler backtrace will not be correct if the
    // interrupt is connected to PRO CPU and invalid access happens on the APP
    // CPU.

    FUNC0(DPORT_PRO_CACHE_IA_INT_EN_REG,
        DPORT_MMU_ENTRY_FAULT_INT_ENA |
        DPORT_DCACHE_REJECT_INT_ENA |
        DPORT_DCACHE_WRITE_FLASH_INT_ENA |
        DPORT_DC_PRELOAD_SIZE_FAULT_INT_ENA |
        DPORT_DC_SYNC_SIZE_FAULT_INT_ENA |
        DPORT_ICACHE_REJECT_INT_ENA |
        DPORT_IC_PRELOAD_SIZE_FAULT_INT_ENA |
        DPORT_IC_SYNC_SIZE_FAULT_INT_ENA |
        DPORT_CACHE_DBG_INT_CLR |
        DPORT_CACHE_DBG_EN);

    FUNC2(ETS_CACHEERR_INUM);
}