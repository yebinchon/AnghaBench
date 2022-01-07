
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int BIT (int) ;
 int DPORT_CACHE_DBG_STATUS0_REG ;
 int DPORT_CACHE_DBG_STATUS1_REG ;
 int DPORT_MMU_INVALID ;
 int DPORT_PRO_CACHE_MMU_ERROR_CONTENT_REG ;
 int DPORT_PRO_CACHE_MMU_ERROR_VADDR_REG ;
 int DPORT_PRO_DCACHE_MEM_SYNC0_REG ;
 int DPORT_PRO_DCACHE_MEM_SYNC1_REG ;
 int DPORT_PRO_DCACHE_PRELOAD_ADDR_REG ;
 int DPORT_PRO_DCACHE_PRELOAD_SIZE_REG ;
 int DPORT_PRO_DCACHE_REJECT_VADDR_REG ;
 int DPORT_PRO_ICACHE_MEM_SYNC0_REG ;
 int DPORT_PRO_ICACHE_MEM_SYNC1_REG ;
 int DPORT_PRO_ICACHE_PRELOAD_ADDR_REG ;
 int DPORT_PRO_ICACHE_PRELOAD_SIZE_REG ;
 int DPORT_PRO_ICACHE_REJECT_VADDR_REG ;
 int REG_READ (int ) ;
 int panicPutHex (int) ;
 int panicPutStr (char*) ;

__attribute__((used)) static inline void printCacheError(void)
{
    uint32_t vaddr = 0, size = 0;
    uint32_t status[2];
    status[0] = REG_READ(DPORT_CACHE_DBG_STATUS0_REG);
    status[1] = REG_READ(DPORT_CACHE_DBG_STATUS1_REG);
    for (int i = 0; i < 32; i++) {
        switch (status[0] & BIT(i))
        {
        case 129:
            vaddr = REG_READ(DPORT_PRO_ICACHE_MEM_SYNC0_REG);
            size = REG_READ(DPORT_PRO_ICACHE_MEM_SYNC1_REG);
            panicPutStr("Icache sync parameter configuration error, the error address and size is 0x");
            panicPutHex(vaddr);
            panicPutStr("(0x");
            panicPutHex(size);
            panicPutStr(")\r\n");
            break;
        case 130:
            vaddr = REG_READ(DPORT_PRO_ICACHE_PRELOAD_ADDR_REG);
            size = REG_READ(DPORT_PRO_ICACHE_PRELOAD_SIZE_REG);
            panicPutStr("Icache preload parameter configuration error, the error address and size is 0x");
            panicPutHex(vaddr);
            panicPutStr("(0x");
            panicPutHex(size);
            panicPutStr(")\r\n");
            break;
        case 131:
            vaddr = REG_READ(DPORT_PRO_ICACHE_REJECT_VADDR_REG);
            panicPutStr("Icache reject error occurred while accessing the address 0x");
            panicPutHex(vaddr);

            if (REG_READ(DPORT_PRO_CACHE_MMU_ERROR_CONTENT_REG) & DPORT_MMU_INVALID) {
                panicPutStr(" (invalid mmu entry)");
            }
            panicPutStr("\r\n");
            break;
        default:
            break;
        }
        switch (status[1] & BIT(i))
        {
        case 132:
            vaddr = REG_READ(DPORT_PRO_DCACHE_MEM_SYNC0_REG);
            size = REG_READ(DPORT_PRO_DCACHE_MEM_SYNC1_REG);
            panicPutStr("Dcache sync parameter configuration error, the error address and size is 0x");
            panicPutHex(vaddr);
            panicPutStr("(0x");
            panicPutHex(size);
            panicPutStr(")\r\n");
            break;
        case 133:
            vaddr = REG_READ(DPORT_PRO_DCACHE_PRELOAD_ADDR_REG);
            size = REG_READ(DPORT_PRO_DCACHE_PRELOAD_SIZE_REG);
            panicPutStr("Dcache preload parameter configuration error, the error address and size is 0x");
            panicPutHex(vaddr);
            panicPutStr("(0x");
            panicPutHex(size);
            panicPutStr(")\r\n");
            break;
        case 134:
            panicPutStr("Write back error occurred while dcache tries to write back to flash\r\n");
            break;
        case 135:
            vaddr = REG_READ(DPORT_PRO_DCACHE_REJECT_VADDR_REG);
            panicPutStr("Dcache reject error occurred while accessing the address 0x");
            panicPutHex(vaddr);

            if (REG_READ(DPORT_PRO_CACHE_MMU_ERROR_CONTENT_REG) & DPORT_MMU_INVALID) {
                panicPutStr(" (invalid mmu entry)");
            }
            panicPutStr("\r\n");
            break;
        case 128:
            vaddr = REG_READ(DPORT_PRO_CACHE_MMU_ERROR_VADDR_REG);
            panicPutStr("MMU entry fault error occurred while accessing the address 0x");
            panicPutHex(vaddr);

            if (REG_READ(DPORT_PRO_CACHE_MMU_ERROR_CONTENT_REG) & DPORT_MMU_INVALID) {
                panicPutStr(" (invalid mmu entry)");
            }
            panicPutStr("\r\n");
            break;
        default:
            break;
        }
    }
    panicPutStr("\r\n");
}
