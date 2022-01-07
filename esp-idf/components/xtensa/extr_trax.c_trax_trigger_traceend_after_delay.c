
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERI_TRAX_DELAYCNT ;
 int ERI_TRAX_TRAXCTRL ;
 int ESP_ERR_NO_MEM ;
 int ESP_LOGE (int ,char*) ;
 int ESP_OK ;
 int TAG ;
 int TRAXCTRL_TRSTP ;
 int eri_read (int ) ;
 int eri_write (int ,int) ;

int trax_trigger_traceend_after_delay(int delay)
{

    ESP_LOGE(TAG, "Trax_trigger_traceend_after_delay called, but trax is disabled in menuconfig!");
    return ESP_ERR_NO_MEM;

    eri_write(ERI_TRAX_DELAYCNT, delay);
    eri_write(ERI_TRAX_TRAXCTRL, eri_read(ERI_TRAX_TRAXCTRL)|TRAXCTRL_TRSTP);
    return ESP_OK;
}
