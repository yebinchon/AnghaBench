
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct wps_sm {int ignore_sel_reg; TYPE_1__* dis_ap_list; } ;
struct wps_parse_attr {scalar_t__* selected_registrar; int dev_password_id; } ;
struct wpabuf {int dummy; } ;
struct TYPE_2__ {int bssid; } ;


 scalar_t__ DEV_PW_PUSHBUTTON ;
 int MSG_DEBUG ;
 scalar_t__ WPA_GET_BE16 (int ) ;
 int WPS_MAX_DIS_AP_NUM ;
 int os_free (struct wps_parse_attr*) ;
 scalar_t__ os_memcmp (int ,int *,int) ;
 scalar_t__ os_zalloc (int) ;
 int wpa_printf (int ,char*,int ,int ,int ,int ,int ,int ) ;
 scalar_t__ wps_parse_msg (struct wpabuf const*,struct wps_parse_attr*) ;
 struct wps_sm* wps_sm_get () ;

int wps_is_selected_pbc_registrar(const struct wpabuf *msg, u8 *bssid)
{
 struct wps_sm *sm = wps_sm_get();
    struct wps_parse_attr *attr = (struct wps_parse_attr *)os_zalloc(sizeof(struct wps_parse_attr));
    int i = 0;
    if (wps_parse_msg(msg, attr) < 0) {
     os_free(attr);
     return 0;
    }

    if(!attr->selected_registrar || *attr->selected_registrar == 0) {
     if (sm->ignore_sel_reg == 0) {
      os_free(attr);
         return 0;
     }
     else {
        for (i = 0; i < WPS_MAX_DIS_AP_NUM; i++) {
          if (0 == os_memcmp(sm->dis_ap_list[i].bssid, bssid, 6)) {
           wpa_printf(MSG_DEBUG, "discard ap bssid[%02x:%02x:%02x:%02x:%02x:%02x]\n", bssid[0], bssid[1], bssid[2], bssid[3], bssid[4], bssid[5]);

           os_free(attr);
           return 0;
          }
        }
     }
    }

    if (!attr->dev_password_id ||
        WPA_GET_BE16(attr->dev_password_id) != DEV_PW_PUSHBUTTON) {
        os_free(attr);
        return 0;
    }

    os_free(attr);
    return 1;
}
