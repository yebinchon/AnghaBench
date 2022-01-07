
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct wps_sm {int wps_timeout_timer; TYPE_1__* wps; int current_identifier; int wps_eapol_start_timer; } ;
struct ieee802_1x_hdr {int type; int version; int length; } ;
struct eap_hdr {int code; int identifier; int length; } ;
typedef enum wps_process_res { ____Placeholder_wps_process_res } wps_process_res ;
struct TYPE_2__ {int state; } ;


 int EAPOL_VERSION ;






 int ESP_FAIL ;
 int ESP_OK ;
 int IEEE802_1X_TYPE_EAP_PACKET ;
 int MSG_DEBUG ;
 int MSG_MSGDUMP ;
 int WIFI_EVENT ;
 int WIFI_EVENT_STA_WPS_ER_FAILED ;
 int WPS_DONE ;
 int WPS_FAILURE ;
 int WPS_FRAGMENT ;
 int WPS_IGNORE ;
 int WPS_STATUS_DISABLE ;
 int be_to_host16 (int ) ;
 int esp_event_send_internal (int ,int ,int ,int ,int ) ;
 int esp_wifi_disarm_sta_connection_timer_internal () ;
 int ets_timer_arm (int *,int,int ) ;
 int ets_timer_disarm (int *) ;
 struct wps_sm* gWpsSm ;
 int portMAX_DELAY ;
 int wpa_hexdump (int ,char*,int*,int) ;
 int wpa_printf (int ,char*,...) ;
 int wps_finish () ;
 int wps_process_wps_mX_req (int*,int ,int*) ;
 int wps_send_eap_identity_rsp (int ) ;
 int wps_send_wps_mX_rsp (int ) ;
 int wps_set_status (int ) ;
 int wps_start_msg_timer () ;

int wps_sm_rx_eapol_internal(u8 *src_addr, u8 *buf, u32 len)
{
    struct wps_sm *sm = gWpsSm;
    u32 plen, data_len, eap_len;
    struct ieee802_1x_hdr *hdr;
    struct eap_hdr *ehdr;
    u8 *tmp;
    u8 eap_code;
    u8 eap_type;
    int ret = ESP_FAIL;
    enum wps_process_res res = WPS_DONE;

    if (!gWpsSm) {
        return ESP_FAIL;
    }

    if (len < sizeof(*hdr) + sizeof(*ehdr)) {






        return ESP_OK;
    }

    tmp = buf;

    hdr = (struct ieee802_1x_hdr *) tmp;
    ehdr = (struct eap_hdr *) (hdr + 1);
    plen = be_to_host16(hdr->length);
    data_len = plen + sizeof(*hdr);
    eap_len = be_to_host16(ehdr->length);






    if (hdr->version < EAPOL_VERSION) {

    }
    if (hdr->type != IEEE802_1X_TYPE_EAP_PACKET) {




        ret = 0;
        goto out;
    }
    if (plen > len - sizeof(*hdr) || plen < sizeof(*ehdr)) {





        ret = 0;
        goto out;
    }

    wpa_hexdump(MSG_MSGDUMP, "WPA: RX EAPOL-EAP PACKET", tmp, len);

    if (data_len < len) {




    }

    if (eap_len != plen) {





        ret = 0;
        goto out;
    }

    eap_code = ehdr->code;
    switch (eap_code) {
    case 130:
        wpa_printf(MSG_DEBUG, "error: receive eapol success frame!");
        ret = 0;
        break;
    case 133:
        wpa_printf(MSG_DEBUG, "receive eap code failure!");
        ret = wps_finish();
        break;
    case 131:
        wpa_printf(MSG_DEBUG, "error: receive eapol response frame!");
        ret = 0;
        break;
    case 132: {
        eap_type = ((u8 *)ehdr)[sizeof(*ehdr)];
        switch (eap_type) {
        case 128:
            wpa_printf(MSG_DEBUG, "=========identity===========");
            sm->current_identifier = ehdr->identifier;
            ets_timer_disarm(&sm->wps_eapol_start_timer);
            wpa_printf(MSG_DEBUG, "WPS: Build EAP Identity.");
            ret = wps_send_eap_identity_rsp(ehdr->identifier);
            ets_timer_arm(&sm->wps_eapol_start_timer, 3000, 0);
            break;
        case 129:
            wpa_printf(MSG_DEBUG, "=========expanded plen[%d], %d===========", plen, sizeof(*ehdr));
            if (ehdr->identifier == sm->current_identifier) {
                ret = 0;
                wpa_printf(MSG_DEBUG, "wps: ignore overlap identifier");
                goto out;
            }
            sm->current_identifier = ehdr->identifier;

            tmp = (u8 *)(ehdr + 1) + 1;
            ret = wps_process_wps_mX_req(tmp, plen - sizeof(*ehdr) - 1, &res);
            if (ret == 0 && res != WPS_FAILURE && res != WPS_IGNORE && res != WPS_FRAGMENT) {
                ret = wps_send_wps_mX_rsp(ehdr->identifier);
                if (ret == 0) {
                    wpa_printf(MSG_DEBUG, "sm->wps->state = %d", sm->wps->state);
                    wps_start_msg_timer();
                }
            } else if (ret == 0 && res == WPS_FRAGMENT) {
                wpa_printf(MSG_DEBUG, "wps frag, continue...");
                ret = ESP_OK;
            } else if (res == WPS_IGNORE) {
                wpa_printf(MSG_DEBUG, "IGNORE overlap Mx");
                ret = ESP_OK;
            } else {
                ret = ESP_FAIL;
            }
            break;
        default:
            break;
        }
        break;
    }
    default:
        break;
    }
out:
    if (ret != 0 || res == WPS_FAILURE) {
        wpa_printf(MSG_DEBUG, "wpa rx eapol internal: fail ret=%d", ret);
        wps_set_status(WPS_STATUS_DISABLE);
        esp_wifi_disarm_sta_connection_timer_internal();
        ets_timer_disarm(&sm->wps_timeout_timer);

        esp_event_send_internal(WIFI_EVENT, WIFI_EVENT_STA_WPS_ER_FAILED, 0, 0, portMAX_DELAY);

        return ret;
    }

    return ret;
}
