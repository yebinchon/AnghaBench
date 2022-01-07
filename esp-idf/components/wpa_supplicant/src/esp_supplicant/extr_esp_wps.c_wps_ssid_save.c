
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct TYPE_2__ {scalar_t__ ssid_len; scalar_t__* ssid; } ;


 int ESP_FAIL ;
 int ESP_OK ;
 int MSG_DEBUG ;
 TYPE_1__* gWpsSm ;
 int memcpy (scalar_t__*,scalar_t__*,scalar_t__) ;
 int memset (scalar_t__*,int,int) ;
 int os_free (scalar_t__*) ;
 scalar_t__ os_zalloc (scalar_t__) ;
 int wpa_printf (int ,char*,scalar_t__*) ;

int
wps_ssid_save(u8 *ssid, u8 ssid_len)
{
    u8 *tmpssid;

    if (!ssid || !gWpsSm) {
        return ESP_FAIL;
    }

    memset(gWpsSm->ssid, 0x00, sizeof(gWpsSm->ssid));
    memcpy(gWpsSm->ssid, ssid, ssid_len);
    gWpsSm->ssid_len = ssid_len;

    tmpssid = (u8 *)os_zalloc(ssid_len + 1);
    if (tmpssid) {
        memcpy(tmpssid, ssid, ssid_len);
        wpa_printf(MSG_DEBUG, "WPS: ssid[%s]", tmpssid);
        os_free(tmpssid);
    }
    return ESP_OK;
}
