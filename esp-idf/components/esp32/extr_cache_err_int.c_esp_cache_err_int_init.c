
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 int DPORT_CACHE_IA_INT_APP_DRAM1 ;
 int DPORT_CACHE_IA_INT_APP_DROM0 ;
 int DPORT_CACHE_IA_INT_APP_IRAM0 ;
 int DPORT_CACHE_IA_INT_APP_IRAM1 ;
 int DPORT_CACHE_IA_INT_APP_IROM0 ;
 int DPORT_CACHE_IA_INT_APP_OPPOSITE ;
 int DPORT_CACHE_IA_INT_EN_REG ;
 int DPORT_CACHE_IA_INT_PRO_DRAM1 ;
 int DPORT_CACHE_IA_INT_PRO_DROM0 ;
 int DPORT_CACHE_IA_INT_PRO_IRAM0 ;
 int DPORT_CACHE_IA_INT_PRO_IRAM1 ;
 int DPORT_CACHE_IA_INT_PRO_IROM0 ;
 int DPORT_CACHE_IA_INT_PRO_OPPOSITE ;
 int DPORT_SET_PERI_REG_MASK (int ,int) ;
 int ESP_INTR_DISABLE (int ) ;
 int ESP_INTR_ENABLE (int ) ;
 int ETS_CACHEERR_INUM ;
 int ETS_CACHE_IA_INTR_SOURCE ;
 scalar_t__ PRO_CPU_NUM ;
 int intr_matrix_set (scalar_t__,int ,int ) ;
 scalar_t__ xPortGetCoreID () ;

void esp_cache_err_int_init(void)
{
    uint32_t core_id = xPortGetCoreID();
    ESP_INTR_DISABLE(ETS_CACHEERR_INUM);





    intr_matrix_set(core_id, ETS_CACHE_IA_INTR_SOURCE, ETS_CACHEERR_INUM);
    if (core_id == PRO_CPU_NUM) {
        DPORT_SET_PERI_REG_MASK(DPORT_CACHE_IA_INT_EN_REG,
            DPORT_CACHE_IA_INT_PRO_OPPOSITE |
            DPORT_CACHE_IA_INT_PRO_DRAM1 |
            DPORT_CACHE_IA_INT_PRO_DROM0 |
            DPORT_CACHE_IA_INT_PRO_IROM0 |
            DPORT_CACHE_IA_INT_PRO_IRAM0 |
            DPORT_CACHE_IA_INT_PRO_IRAM1);
    } else {
        DPORT_SET_PERI_REG_MASK(DPORT_CACHE_IA_INT_EN_REG,
            DPORT_CACHE_IA_INT_APP_OPPOSITE |
            DPORT_CACHE_IA_INT_APP_DRAM1 |
            DPORT_CACHE_IA_INT_APP_DROM0 |
            DPORT_CACHE_IA_INT_APP_IROM0 |
            DPORT_CACHE_IA_INT_APP_IRAM0 |
            DPORT_CACHE_IA_INT_APP_IRAM1);
    }
    ESP_INTR_ENABLE(ETS_CACHEERR_INUM);
}
