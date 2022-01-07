
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


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
 int DPORT_PRO_CACHE_IA_INT_EN_REG ;
 int DPORT_SET_PERI_REG_MASK (int ,int) ;
 int ESP_INTR_DISABLE (int ) ;
 int ESP_INTR_ENABLE (int ) ;
 int ETS_CACHEERR_INUM ;
 int ETS_CACHE_IA_INTR_SOURCE ;
 int intr_matrix_set (int ,int ,int ) ;
 int xPortGetCoreID () ;

void esp_cache_err_int_init(void)
{
    uint32_t core_id = xPortGetCoreID();
    ESP_INTR_DISABLE(ETS_CACHEERR_INUM);





    intr_matrix_set(core_id, ETS_CACHE_IA_INTR_SOURCE, ETS_CACHEERR_INUM);
    DPORT_SET_PERI_REG_MASK(DPORT_PRO_CACHE_IA_INT_EN_REG,
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

    ESP_INTR_ENABLE(ETS_CACHEERR_INUM);
}
