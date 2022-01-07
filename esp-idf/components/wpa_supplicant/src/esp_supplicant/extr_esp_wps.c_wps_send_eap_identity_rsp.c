
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_sm {int identity_len; int identity; } ;
struct wpabuf {int dummy; } ;


 int EAP_CODE_RESPONSE ;
 int EAP_TYPE_IDENTITY ;
 int EAP_VENDOR_IETF ;
 int ESP_ERR_NO_MEM ;
 int ESP_FAIL ;
 int ESP_OK ;
 int ETH_P_EAPOL ;
 int IEEE802_1X_TYPE_EAP_PACKET ;
 int MSG_DEBUG ;
 int MSG_ERROR ;
 struct wpabuf* eap_msg_alloc (int ,int ,int ,int ,int ) ;
 int esp_wifi_get_assoc_bssid_internal (int *) ;
 struct wps_sm* gWpsSm ;
 int wpa_printf (int ,char*) ;
 int wpabuf_free (struct wpabuf*) ;
 int wpabuf_head_u8 (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;
 int wpabuf_put_data (struct wpabuf*,int ,int ) ;
 int * wps_sm_alloc_eapol (struct wps_sm*,int ,int ,int ,size_t*,int *) ;
 int wps_sm_ether_send (struct wps_sm*,int *,int ,int *,int) ;
 int wps_sm_free_eapol (int *) ;

int wps_send_eap_identity_rsp(u8 id)
{
    struct wps_sm *sm = gWpsSm;
    struct wpabuf *eap_buf = ((void*)0);
    u8 bssid[6];
    u8 *buf = ((void*)0);
    int len;
    int ret = ESP_OK;

    wpa_printf(MSG_DEBUG, "wps send eapol id rsp");
    eap_buf = eap_msg_alloc(EAP_VENDOR_IETF, EAP_TYPE_IDENTITY, sm->identity_len,
                            EAP_CODE_RESPONSE, id);
    if (!eap_buf) {
        ret = ESP_FAIL;
        goto _err;
    }

    ret = esp_wifi_get_assoc_bssid_internal(bssid);
    if (ret != 0) {
        wpa_printf(MSG_ERROR, "bssid is empty!");
        return ESP_FAIL;
    }

    wpabuf_put_data(eap_buf, sm->identity, sm->identity_len);

    buf = wps_sm_alloc_eapol(sm, IEEE802_1X_TYPE_EAP_PACKET, wpabuf_head_u8(eap_buf), wpabuf_len(eap_buf), (size_t *)&len, ((void*)0));
    if (!buf) {
        ret = ESP_ERR_NO_MEM;
        goto _err;
    }

    ret = wps_sm_ether_send(sm, bssid, ETH_P_EAPOL, buf, len);
    if (ret) {
        ret = ESP_FAIL;
        goto _err;
    }

_err:
    wps_sm_free_eapol(buf);
    wpabuf_free(eap_buf);
    return ret;
}
