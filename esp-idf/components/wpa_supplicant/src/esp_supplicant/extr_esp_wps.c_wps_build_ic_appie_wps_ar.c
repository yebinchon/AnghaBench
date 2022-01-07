
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct wpabuf {int used; } ;


 int MSG_DEBUG ;
 int WIFI_APPIE_WPS_AR ;
 int WPS_REQ_ENROLLEE ;
 int esp_wifi_set_appie_internal (int ,int *,int ,int ) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_free (struct wpabuf*) ;
 scalar_t__ wpabuf_head (struct wpabuf*) ;
 scalar_t__ wps_build_assoc_req_ie (int ) ;

__attribute__((used)) static void
wps_build_ic_appie_wps_ar(void)
{
    struct wpabuf *buf = (struct wpabuf *)wps_build_assoc_req_ie(WPS_REQ_ENROLLEE);

    wpa_printf(MSG_DEBUG, "wps build: wps ar");

    if (buf) {
        esp_wifi_set_appie_internal(WIFI_APPIE_WPS_AR, (uint8_t *)wpabuf_head(buf), buf->used, 0);
        wpabuf_free(buf);
    }
}
