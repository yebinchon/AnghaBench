
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int WPA_ASSERT (int) ;
 int wpa_config_bss (int *) ;
 int wpa_config_profile () ;

void wpa_sta_connect(uint8_t *bssid)
{
    int ret = 0;
    wpa_config_profile();
    ret = wpa_config_bss(bssid);
    WPA_ASSERT(ret == 0);
}
