
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ trax_downcount_unit_t ;


 int ERI_TRAX_DELAYCNT ;
 int ERI_TRAX_PCMATCHCTRL ;
 int ERI_TRAX_TRAXCTRL ;
 int ERI_TRAX_TRAXSTAT ;
 int ESP_ERR_NO_MEM ;
 int ESP_LOGE (int ,char*) ;
 int ESP_LOGI (int ,char*) ;
 int ESP_OK ;
 int TAG ;
 int TRAXCTRL_CNTU ;
 int TRAXCTRL_PTOWS ;
 int TRAXCTRL_SMPER_SHIFT ;
 int TRAXCTRL_TMEN ;
 int TRAXCTRL_TREN ;
 int TRAXCTRL_TRSTP ;
 int TRAXSTAT_TRACT ;
 scalar_t__ TRAX_DOWNCOUNT_INSTRUCTIONS ;
 int eri_read (int ) ;
 int eri_write (int ,int) ;

int trax_start_trace(trax_downcount_unit_t units_until_stop)
{

    ESP_LOGE(TAG, "Trax_start_trace called, but trax is disabled in menuconfig!");
    return ESP_ERR_NO_MEM;

    uint32_t v;
    if (eri_read(ERI_TRAX_TRAXSTAT)&TRAXSTAT_TRACT) {
        ESP_LOGI(TAG, "Stopping active trace first.");

        eri_write(ERI_TRAX_DELAYCNT, 0);
        eri_write(ERI_TRAX_TRAXCTRL, eri_read(ERI_TRAX_TRAXCTRL)|TRAXCTRL_TRSTP);

        eri_write(ERI_TRAX_TRAXCTRL, 0);
    }
    eri_write(ERI_TRAX_PCMATCHCTRL, 31);
    v=TRAXCTRL_TREN | TRAXCTRL_TMEN | TRAXCTRL_PTOWS | (1<<TRAXCTRL_SMPER_SHIFT);
    if (units_until_stop == TRAX_DOWNCOUNT_INSTRUCTIONS) v|=TRAXCTRL_CNTU;

    eri_write(ERI_TRAX_TRAXCTRL, v);
    return ESP_OK;
}
