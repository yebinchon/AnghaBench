
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ trax_ena_select_t ;


 int DPORT_APP_TRACEMEM_ENA_REG ;
 int DPORT_PRO_TRACEMEM_ENA_REG ;
 int DPORT_TRACEMEM_MUX_MODE_REG ;
 int DPORT_WRITE_PERI_REG (int ,int) ;
 int ESP_ERR_NO_MEM ;
 int ESP_LOGE (int ,char*) ;
 int ESP_OK ;
 int TAG ;
 int TRACEMEM_MUX_BLK0_ONLY ;
 int TRACEMEM_MUX_PROBLK0_APPBLK1 ;
 int TRACEMEM_MUX_PROBLK1_APPBLK0 ;
 scalar_t__ TRAX_ENA_APP ;
 scalar_t__ TRAX_ENA_PRO ;
 scalar_t__ TRAX_ENA_PRO_APP ;
 scalar_t__ TRAX_ENA_PRO_APP_SWAP ;

int trax_enable(trax_ena_select_t which)
{

    ESP_LOGE(TAG, "Trax_enable called, but trax is disabled in menuconfig!");
    return ESP_ERR_NO_MEM;


    if (which == TRAX_ENA_PRO_APP || which == TRAX_ENA_PRO_APP_SWAP) return ESP_ERR_NO_MEM;

    if (which == TRAX_ENA_PRO_APP || which == TRAX_ENA_PRO_APP_SWAP) {
        DPORT_WRITE_PERI_REG(DPORT_TRACEMEM_MUX_MODE_REG, (which == TRAX_ENA_PRO_APP_SWAP)?TRACEMEM_MUX_PROBLK1_APPBLK0:TRACEMEM_MUX_PROBLK0_APPBLK1);
    } else {
        DPORT_WRITE_PERI_REG(DPORT_TRACEMEM_MUX_MODE_REG, TRACEMEM_MUX_BLK0_ONLY);
    }
    DPORT_WRITE_PERI_REG(DPORT_PRO_TRACEMEM_ENA_REG, (which == TRAX_ENA_PRO_APP || which == TRAX_ENA_PRO_APP_SWAP || which == TRAX_ENA_PRO));
    DPORT_WRITE_PERI_REG(DPORT_APP_TRACEMEM_ENA_REG, (which == TRAX_ENA_PRO_APP || which == TRAX_ENA_PRO_APP_SWAP || which == TRAX_ENA_APP));
    return ESP_OK;
}
