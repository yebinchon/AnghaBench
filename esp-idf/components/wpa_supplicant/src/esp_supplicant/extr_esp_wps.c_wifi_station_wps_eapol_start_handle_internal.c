
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MSG_DEBUG ;
 int wpa_printf (int ,char*) ;
 int wps_tx_start () ;

void wifi_station_wps_eapol_start_handle_internal(void)
{
    wpa_printf(MSG_DEBUG, "Resend EAPOL-Start.");
    wps_tx_start();
}
