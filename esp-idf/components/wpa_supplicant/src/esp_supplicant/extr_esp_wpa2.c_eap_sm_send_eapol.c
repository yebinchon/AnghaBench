
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpabuf {int dummy; } ;
struct eap_sm {int dummy; } ;


 int ESP_ERR_NO_MEM ;
 int ESP_FAIL ;
 int ESP_OK ;
 int ETH_P_EAPOL ;
 int IEEE802_1X_TYPE_EAP_PACKET ;
 int MSG_DEBUG ;
 int WPA_ERR_INVALID_BSSID ;
 int esp_wifi_get_assoc_bssid_internal (int *) ;
 int * wpa2_sm_alloc_eapol (struct eap_sm*,int ,int ,int ,size_t*,int *) ;
 int wpa2_sm_ether_send (struct eap_sm*,int *,int ,int *,size_t) ;
 int wpa2_sm_free_eapol (int *) ;
 int wpa_printf (int ,char*) ;
 int wpabuf_head_u8 (struct wpabuf*) ;
 int wpabuf_len (struct wpabuf*) ;

int eap_sm_send_eapol(struct eap_sm *sm, struct wpabuf *resp)
{
    size_t outlen;
    int ret;
    u8 *outbuf = ((void*)0);

    u8 bssid[6];
    ret = esp_wifi_get_assoc_bssid_internal(bssid);

    if (ret != 0) {
        wpa_printf(MSG_DEBUG, "bssid is empty \n");
        return WPA_ERR_INVALID_BSSID;
    }

    outbuf = wpa2_sm_alloc_eapol(sm, IEEE802_1X_TYPE_EAP_PACKET,
                                 wpabuf_head_u8(resp), wpabuf_len(resp),
                                 &outlen, ((void*)0));
    if (!outbuf) {
        return ESP_ERR_NO_MEM;
    }

    ret = wpa2_sm_ether_send(sm, bssid, ETH_P_EAPOL, outbuf, outlen);
    wpa2_sm_free_eapol(outbuf);
    if (ret) {
        return ESP_FAIL;
    }

    return ESP_OK;
}
