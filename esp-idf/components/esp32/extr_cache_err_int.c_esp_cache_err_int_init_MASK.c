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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int DPORT_CACHE_IA_INT_APP_DRAM1 ; 
 int DPORT_CACHE_IA_INT_APP_DROM0 ; 
 int DPORT_CACHE_IA_INT_APP_IRAM0 ; 
 int DPORT_CACHE_IA_INT_APP_IRAM1 ; 
 int DPORT_CACHE_IA_INT_APP_IROM0 ; 
 int DPORT_CACHE_IA_INT_APP_OPPOSITE ; 
 int /*<<< orphan*/  DPORT_CACHE_IA_INT_EN_REG ; 
 int DPORT_CACHE_IA_INT_PRO_DRAM1 ; 
 int DPORT_CACHE_IA_INT_PRO_DROM0 ; 
 int DPORT_CACHE_IA_INT_PRO_IRAM0 ; 
 int DPORT_CACHE_IA_INT_PRO_IRAM1 ; 
 int DPORT_CACHE_IA_INT_PRO_IROM0 ; 
 int DPORT_CACHE_IA_INT_PRO_OPPOSITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ETS_CACHEERR_INUM ; 
 int /*<<< orphan*/  ETS_CACHE_IA_INTR_SOURCE ; 
 scalar_t__ PRO_CPU_NUM ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 () ; 

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

    if (core_id == PRO_CPU_NUM) {
        FUNC0(DPORT_CACHE_IA_INT_EN_REG,
            DPORT_CACHE_IA_INT_PRO_OPPOSITE |
            DPORT_CACHE_IA_INT_PRO_DRAM1 |
            DPORT_CACHE_IA_INT_PRO_DROM0 |
            DPORT_CACHE_IA_INT_PRO_IROM0 |
            DPORT_CACHE_IA_INT_PRO_IRAM0 |
            DPORT_CACHE_IA_INT_PRO_IRAM1);
    } else {
        FUNC0(DPORT_CACHE_IA_INT_EN_REG,
            DPORT_CACHE_IA_INT_APP_OPPOSITE |
            DPORT_CACHE_IA_INT_APP_DRAM1 |
            DPORT_CACHE_IA_INT_APP_DROM0 |
            DPORT_CACHE_IA_INT_APP_IROM0 |
            DPORT_CACHE_IA_INT_APP_IRAM0 |
            DPORT_CACHE_IA_INT_APP_IRAM1);
    }
    FUNC2(ETS_CACHEERR_INUM);
}