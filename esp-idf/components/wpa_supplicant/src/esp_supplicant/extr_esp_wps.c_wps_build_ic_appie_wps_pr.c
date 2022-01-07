
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct wps_sm {int uuid; int dev; } ;
struct wpabuf {int used; } ;


 int DEV_PW_DEFAULT ;
 int DEV_PW_PUSHBUTTON ;
 int MSG_DEBUG ;
 int WIFI_APPIE_WPS_PR ;
 int WPS_REQ_ENROLLEE ;
 scalar_t__ WPS_TYPE_PBC ;
 int esp_wifi_set_appie_internal (int ,int *,int ,int ) ;
 struct wps_sm* gWpsSm ;
 int wpa_printf (int ,char*) ;
 int wpabuf_free (struct wpabuf*) ;
 scalar_t__ wpabuf_head (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;
 int wpabuf_put_buf (struct wpabuf*,struct wpabuf*) ;
 scalar_t__ wpabuf_resize (struct wpabuf**,int ) ;
 scalar_t__ wps_build_probe_req_ie (int ,int ,int ,int ,int ,int *) ;
 scalar_t__ wps_get_type () ;

__attribute__((used)) static void
wps_build_ic_appie_wps_pr(void)
{
    struct wpabuf *extra_ie = ((void*)0);
    struct wpabuf *wps_ie;
    struct wps_sm *sm = gWpsSm;

    wpa_printf(MSG_DEBUG, "wps build: wps pr");

    if (wps_get_type() == WPS_TYPE_PBC) {
        wps_ie = (struct wpabuf *)wps_build_probe_req_ie(DEV_PW_PUSHBUTTON,
                 sm->dev,
                 sm->uuid, WPS_REQ_ENROLLEE,
                 0, ((void*)0));
    } else {
        wps_ie = (struct wpabuf *)wps_build_probe_req_ie(DEV_PW_DEFAULT,
                 sm->dev,
                 sm->uuid, WPS_REQ_ENROLLEE,
                 0, ((void*)0));
    }

    if (wps_ie) {
        if (wpabuf_resize(&extra_ie, wpabuf_len(wps_ie)) == 0) {
            wpabuf_put_buf(extra_ie, wps_ie);
        } else {
            wpabuf_free(wps_ie);
            return;
        }
        wpabuf_free(wps_ie);
    }

    esp_wifi_set_appie_internal(WIFI_APPIE_WPS_PR, (uint8_t *)wpabuf_head(extra_ie), extra_ie->used, 0);
    wpabuf_free(extra_ie);
}
