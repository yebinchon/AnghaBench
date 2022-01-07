
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ wifi_mode_t ;
struct TYPE_2__ {int bssid_set; int ssid; int bssid; } ;
struct wps_sm {int is_wps_scan; char* ssid; int channel; scalar_t__ ssid_len; TYPE_1__ config; scalar_t__ scan_cnt; int bssid; int discover_ssid_cnt; } ;
struct wps_scan_ie {char* bssid; int capinfo; int chan; scalar_t__* ssid; int wpa; int rsn; scalar_t__* wps; } ;
struct wpabuf {int dummy; } ;


 scalar_t__ ETH_ALEN ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int WIFI_CAPINFO_PRIVACY ;
 scalar_t__ WIFI_MODE_APSTA ;
 scalar_t__ WIFI_MODE_STA ;
 scalar_t__ WPS_STATUS_DISABLE ;
 scalar_t__ WPS_STATUS_SCANNING ;
 scalar_t__ WPS_TYPE_DISABLE ;
 int esp_wifi_enable_sta_privacy_internal () ;
 int esp_wifi_get_mode (scalar_t__*) ;
 struct wps_sm* gWpsSm ;
 scalar_t__ memcmp (int ,char*,scalar_t__) ;
 int memcpy (int ,char*,scalar_t__) ;
 int os_bzero (char*,int) ;
 int strncpy (char*,char*,int) ;
 int wpa_printf (int ,char*,...) ;
 struct wpabuf* wpabuf_alloc_copy (scalar_t__*,scalar_t__) ;
 int wpabuf_free (struct wpabuf*) ;
 scalar_t__ wps_get_status () ;
 scalar_t__ wps_get_type () ;
 scalar_t__ wps_is_selected_pbc_registrar (struct wpabuf*,char*) ;
 scalar_t__ wps_is_selected_pin_registrar (struct wpabuf*,char*) ;

__attribute__((used)) static bool
wps_parse_scan_result(struct wps_scan_ie *scan)
{
    struct wps_sm *sm = gWpsSm;
    wifi_mode_t op_mode = 0;
    if (wps_get_type() == WPS_TYPE_DISABLE
            || (wps_get_status() != WPS_STATUS_DISABLE
                && wps_get_status() != WPS_STATUS_SCANNING)
       ) {
        return 0;
    }

    esp_wifi_get_mode(&op_mode);
    if ((op_mode == WIFI_MODE_STA || op_mode == WIFI_MODE_APSTA) && scan->wps) {
        struct wpabuf *buf = wpabuf_alloc_copy(scan->wps + 6, scan->wps[1] - 4);

        if (wps_is_selected_pbc_registrar(buf, scan->bssid)
                || wps_is_selected_pin_registrar(buf, scan->bssid)) {
            wpabuf_free(buf);

            if (sm->is_wps_scan == 0) {
                return 0;
            }
            if (memcmp(sm->config.bssid, scan->bssid, ETH_ALEN) != 0 ) {
                sm->discover_ssid_cnt++;
            }

            if (!scan->rsn && !scan->wpa && (scan->capinfo & WIFI_CAPINFO_PRIVACY)) {
                wpa_printf(MSG_ERROR, "WEP not suppported in WPS");

                return 0;
            }

            esp_wifi_enable_sta_privacy_internal();
            os_bzero(sm->ssid, sizeof(sm->ssid));
            strncpy((char *)sm->ssid, (char *)&scan->ssid[2], (int)scan->ssid[1]);
            sm->ssid_len = scan->ssid[1];
            if (scan->bssid) {
                memcpy(gWpsSm->bssid, scan->bssid, ETH_ALEN);
                memcpy(sm->config.bssid, scan->bssid, ETH_ALEN);
                sm->config.bssid_set = 1;
            } else {
            }
            wpa_printf(MSG_DEBUG, "wps discover [%s]", sm->ssid);
            sm->scan_cnt = 0;

            memcpy(sm->config.ssid, sm->ssid, sm->ssid_len);
            sm->channel = scan->chan;

            return 1;
        }
        wpabuf_free(buf);
    }

    return 0;
}
