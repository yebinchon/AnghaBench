
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESP_FAIL ;
 int MSG_DEBUG ;
 int gWpsSm ;
 int wpa_printf (int ,char*) ;
 int wps_tx_start () ;

int wps_start_pending(void)
{
    if (!gWpsSm) {
        return ESP_FAIL;
    }

    wpa_printf(MSG_DEBUG, "wps start pending");
    return wps_tx_start();
}
