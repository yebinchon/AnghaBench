
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_sm {int dummy; } ;
struct wpabuf {int dummy; } ;
typedef enum wsc_op_code { ____Placeholder_wsc_op_code } wsc_op_code ;


 int EAP_CODE_RESPONSE ;
 int EAP_VENDOR_WFA ;
 int ESP_ERR_NO_MEM ;
 int ESP_FAIL ;
 int ETH_P_EAPOL ;
 int IEEE802_1X_TYPE_EAP_PACKET ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 int WSC_FRAG_ACK ;
 struct wpabuf* eap_msg_alloc (int ,int,int,int ,int ) ;
 int esp_wifi_get_assoc_bssid_internal (int *) ;
 struct wps_sm* gWpsSm ;
 int wpa_printf (int ,char*,...) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_head_u8 (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;
 int wpabuf_put_u8 (struct wpabuf*,int) ;
 int * wps_sm_alloc_eapol (struct wps_sm*,int ,int ,int ,size_t*,int *) ;
 int wps_sm_ether_send (struct wps_sm*,int *,int ,int *,int) ;
 int wps_sm_free_eapol (int *) ;

int wps_send_frag_ack(u8 id)
{
    struct wps_sm *sm = gWpsSm;
    struct wpabuf *eap_buf = ((void*)0);
    u8 bssid[6];
    u8 *buf;
    int len;
    int ret = 0;
    enum wsc_op_code opcode = WSC_FRAG_ACK;

    wpa_printf(MSG_DEBUG, "send frag ack id:%d", id);

    if (!sm) {
        return ESP_FAIL;
    }

    ret = esp_wifi_get_assoc_bssid_internal(bssid);
    if (ret != 0) {
        wpa_printf(MSG_ERROR, "bssid is empty!");
        return ret;
    }

    eap_buf = eap_msg_alloc(EAP_VENDOR_WFA, 0x00000001, 2, EAP_CODE_RESPONSE, id);
    if (!eap_buf) {
        ret = ESP_ERR_NO_MEM;
        goto _err;
    }

    wpabuf_put_u8(eap_buf, opcode);
    wpabuf_put_u8(eap_buf, 0x00);

    buf = wps_sm_alloc_eapol(sm, IEEE802_1X_TYPE_EAP_PACKET, wpabuf_head_u8(eap_buf), wpabuf_len(eap_buf), (size_t *)&len, ((void*)0));
    if (!buf) {
        ret = ESP_ERR_NO_MEM;
        goto _err;
    }

    ret = wps_sm_ether_send(sm, bssid, ETH_P_EAPOL, buf, len);
    wps_sm_free_eapol(buf);
    if (ret) {
        ret = ESP_ERR_NO_MEM;
        goto _err;
    }

_err:
    wpabuf_free(eap_buf);
    return ret;
}
