
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef void (* entry_t ) () ;


 int Cache_Flush (int ) ;
 int Cache_Ibus_MMU_Set (int ,int,int,int,int,int) ;
 int Cache_Invalidate_ICache_All () ;
 int Cache_Read_Disable (int ) ;
 int Cache_Read_Enable (int ) ;
 int Cache_Resume_ICache (int) ;
 int Cache_Suspend_ICache () ;
 int DPORT_APP_CACHE_CTRL1_REG ;
 int DPORT_APP_CACHE_MASK_DRAM1 ;
 int DPORT_APP_CACHE_MASK_DROM0 ;
 int DPORT_APP_CACHE_MASK_IRAM0 ;
 int DPORT_APP_CACHE_MASK_IRAM1 ;
 int DPORT_APP_CACHE_MASK_IROM0 ;
 int DPORT_CACHE_SOURCE_1_REG ;
 int DPORT_FLASH_MMU_TABLE_INVALID_VAL ;
 int DPORT_FLASH_MMU_TABLE_SIZE ;
 int DPORT_MMU_ACCESS_FLASH ;
 int DPORT_PRO_CACHE_CTRL1_REG ;
 int DPORT_PRO_CACHE_I_SOURCE_PRO_IRAM1 ;
 int DPORT_PRO_CACHE_I_SOURCE_PRO_IROM0 ;
 int DPORT_PRO_CACHE_MASK_DRAM1 ;
 int DPORT_PRO_CACHE_MASK_DROM0 ;
 int DPORT_PRO_CACHE_MASK_IRAM0 ;
 int DPORT_PRO_CACHE_MASK_IRAM1 ;
 int DPORT_PRO_CACHE_MASK_IROM0 ;
 int * DPORT_PRO_FLASH_MMU_TABLE ;
 int DPORT_PRO_ICACHE_CTRL1_REG ;
 int DPORT_PRO_ICACHE_MASK_DROM0 ;
 int DPORT_PRO_ICACHE_MASK_IRAM0 ;
 int DPORT_PRO_ICACHE_MASK_IRAM1 ;
 int DPORT_PRO_ICACHE_MASK_IROM0 ;
 int DPORT_REG_CLR_BIT (int ,int) ;
 int ESP_LOGD (int ,char*,...) ;
 int ESP_LOGV (int ,char*,int,...) ;
 int IRAM0_ADDRESS_LOW ;
 int IRAM1_ADDRESS_LOW ;
 int IROM0_ADDRESS_LOW ;
 int MMU_FLASH_MASK ;
 int REG_CLR_BIT (int ,int) ;
 int REG_SET_BIT (int ,int ) ;
 int TAG ;
 int bootloader_cache_pages_to_map (int,int) ;
 int cache_flash_mmu_set (int,int ,int,int,int,int) ;
 void stub1 () ;

__attribute__((used)) static void set_cache_and_start_app(
    uint32_t drom_addr,
    uint32_t drom_load_addr,
    uint32_t drom_size,
    uint32_t irom_addr,
    uint32_t irom_load_addr,
    uint32_t irom_size,
    uint32_t entry_addr)
{
    int rc;
    ESP_LOGD(TAG, "configure drom and irom and start");
    for (int i = 0; i < DPORT_FLASH_MMU_TABLE_SIZE; i++) {
        DPORT_PRO_FLASH_MMU_TABLE[i] = DPORT_FLASH_MMU_TABLE_INVALID_VAL;
    }

    uint32_t drom_load_addr_aligned = drom_load_addr & MMU_FLASH_MASK;
    uint32_t drom_page_count = bootloader_cache_pages_to_map(drom_size, drom_load_addr);
    ESP_LOGV(TAG, "d mmu set paddr=%08x vaddr=%08x size=%d n=%d",
             drom_addr & MMU_FLASH_MASK, drom_load_addr_aligned, drom_size, drom_page_count);






    ESP_LOGV(TAG, "rc=%d", rc);




    uint32_t irom_load_addr_aligned = irom_load_addr & MMU_FLASH_MASK;
    uint32_t irom_page_count = bootloader_cache_pages_to_map(irom_size, irom_load_addr);
    ESP_LOGV(TAG, "i mmu set paddr=%08x vaddr=%08x size=%d n=%d",
             irom_addr & MMU_FLASH_MASK, irom_load_addr_aligned, irom_size, irom_page_count);
    ESP_LOGV(TAG, "rc=%d", rc);
    ESP_LOGD(TAG, "start: 0x%08x", entry_addr);
    typedef void (*entry_t)(void) __attribute__((noreturn));
    entry_t entry = ((entry_t) entry_addr);



    (*entry)();
}
