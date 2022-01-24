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
typedef  int uint32_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  DPORT_CACHE_DBG_STATUS0_REG ; 
 int /*<<< orphan*/  DPORT_CACHE_DBG_STATUS1_REG ; 
#define  DPORT_DCACHE_REJECT_ST 135 
#define  DPORT_DCACHE_WRITE_FLASH_ST 134 
#define  DPORT_DC_PRELOAD_SIZE_FAULT_ST 133 
#define  DPORT_DC_SYNC_SIZE_FAULT_ST 132 
#define  DPORT_ICACHE_REJECT_ST 131 
#define  DPORT_IC_PRELOAD_SIZE_FAULT_ST 130 
#define  DPORT_IC_SYNC_SIZE_FAULT_ST 129 
#define  DPORT_MMU_ENTRY_FAULT_ST 128 
 int DPORT_MMU_INVALID ; 
 int /*<<< orphan*/  DPORT_PRO_CACHE_MMU_ERROR_CONTENT_REG ; 
 int /*<<< orphan*/  DPORT_PRO_CACHE_MMU_ERROR_VADDR_REG ; 
 int /*<<< orphan*/  DPORT_PRO_DCACHE_MEM_SYNC0_REG ; 
 int /*<<< orphan*/  DPORT_PRO_DCACHE_MEM_SYNC1_REG ; 
 int /*<<< orphan*/  DPORT_PRO_DCACHE_PRELOAD_ADDR_REG ; 
 int /*<<< orphan*/  DPORT_PRO_DCACHE_PRELOAD_SIZE_REG ; 
 int /*<<< orphan*/  DPORT_PRO_DCACHE_REJECT_VADDR_REG ; 
 int /*<<< orphan*/  DPORT_PRO_ICACHE_MEM_SYNC0_REG ; 
 int /*<<< orphan*/  DPORT_PRO_ICACHE_MEM_SYNC1_REG ; 
 int /*<<< orphan*/  DPORT_PRO_ICACHE_PRELOAD_ADDR_REG ; 
 int /*<<< orphan*/  DPORT_PRO_ICACHE_PRELOAD_SIZE_REG ; 
 int /*<<< orphan*/  DPORT_PRO_ICACHE_REJECT_VADDR_REG ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static inline void FUNC4(void)
{
    uint32_t vaddr = 0, size = 0;
    uint32_t status[2];
    status[0] = FUNC1(DPORT_CACHE_DBG_STATUS0_REG);
    status[1] = FUNC1(DPORT_CACHE_DBG_STATUS1_REG);
    for (int i = 0; i < 32; i++) {
        switch (status[0] & FUNC0(i))
        {
        case DPORT_IC_SYNC_SIZE_FAULT_ST:
            vaddr = FUNC1(DPORT_PRO_ICACHE_MEM_SYNC0_REG);
            size = FUNC1(DPORT_PRO_ICACHE_MEM_SYNC1_REG);
            FUNC3("Icache sync parameter configuration error, the error address and size is 0x");
            FUNC2(vaddr);
            FUNC3("(0x");
            FUNC2(size);
            FUNC3(")\r\n");
            break;
        case DPORT_IC_PRELOAD_SIZE_FAULT_ST:
            vaddr = FUNC1(DPORT_PRO_ICACHE_PRELOAD_ADDR_REG);
            size = FUNC1(DPORT_PRO_ICACHE_PRELOAD_SIZE_REG);
            FUNC3("Icache preload parameter configuration error, the error address and size is 0x");
            FUNC2(vaddr);
            FUNC3("(0x");
            FUNC2(size);
            FUNC3(")\r\n");
            break;
        case DPORT_ICACHE_REJECT_ST:
            vaddr = FUNC1(DPORT_PRO_ICACHE_REJECT_VADDR_REG);
            FUNC3("Icache reject error occurred while accessing the address 0x");
            FUNC2(vaddr);

            if (FUNC1(DPORT_PRO_CACHE_MMU_ERROR_CONTENT_REG) & DPORT_MMU_INVALID) {
                FUNC3(" (invalid mmu entry)");
            }
            FUNC3("\r\n");
            break;
        default:
            break;
        }
        switch (status[1] & FUNC0(i))
        {
        case DPORT_DC_SYNC_SIZE_FAULT_ST:
            vaddr = FUNC1(DPORT_PRO_DCACHE_MEM_SYNC0_REG);
            size = FUNC1(DPORT_PRO_DCACHE_MEM_SYNC1_REG);
            FUNC3("Dcache sync parameter configuration error, the error address and size is 0x");
            FUNC2(vaddr);
            FUNC3("(0x");
            FUNC2(size);
            FUNC3(")\r\n");
            break;
        case DPORT_DC_PRELOAD_SIZE_FAULT_ST:
            vaddr = FUNC1(DPORT_PRO_DCACHE_PRELOAD_ADDR_REG);
            size = FUNC1(DPORT_PRO_DCACHE_PRELOAD_SIZE_REG);
            FUNC3("Dcache preload parameter configuration error, the error address and size is 0x");
            FUNC2(vaddr);
            FUNC3("(0x");
            FUNC2(size);
            FUNC3(")\r\n");
            break;
        case DPORT_DCACHE_WRITE_FLASH_ST:
            FUNC3("Write back error occurred while dcache tries to write back to flash\r\n");
            break;
        case DPORT_DCACHE_REJECT_ST:
            vaddr = FUNC1(DPORT_PRO_DCACHE_REJECT_VADDR_REG);
            FUNC3("Dcache reject error occurred while accessing the address 0x");
            FUNC2(vaddr);

            if (FUNC1(DPORT_PRO_CACHE_MMU_ERROR_CONTENT_REG) & DPORT_MMU_INVALID) {
                FUNC3(" (invalid mmu entry)");
            }
            FUNC3("\r\n");
            break;
        case DPORT_MMU_ENTRY_FAULT_ST:
            vaddr = FUNC1(DPORT_PRO_CACHE_MMU_ERROR_VADDR_REG);
            FUNC3("MMU entry fault error occurred while accessing the address 0x");
            FUNC2(vaddr);

            if (FUNC1(DPORT_PRO_CACHE_MMU_ERROR_CONTENT_REG) & DPORT_MMU_INVALID) {
                FUNC3(" (invalid mmu entry)");
            }
            FUNC3("\r\n");
            break;
        default:
            break;
        }
    }
    FUNC3("\r\n");
}