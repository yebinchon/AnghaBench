
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u8 ;
typedef int u32 ;
struct wpa2_rx_param {int len; int * sa; int * buf; int * bssid; } ;
struct eap_sm {int dummy; } ;


 int ESP_ERR_NO_MEM ;
 int ESP_FAIL ;
 int SIG_WPA2_RX ;
 int WPA_ADDR_LEN ;
 int eap_sm_rx_eapol_internal (int *,int *,int,int *) ;
 struct eap_sm* gEapSm ;
 int memcpy (int *,int *,int) ;
 int os_free (struct wpa2_rx_param*) ;
 scalar_t__ os_zalloc (int) ;
 int wpa2_post (int ,int ) ;
 int wpa2_rxq_enqueue (struct wpa2_rx_param*) ;

__attribute__((used)) static int eap_sm_rx_eapol(u8 *src_addr, u8 *buf, u32 len, uint8_t *bssid)
{
    struct eap_sm *sm = gEapSm;

    if (!sm) {
        return ESP_FAIL;
    }
    return eap_sm_rx_eapol_internal(src_addr, buf, len, bssid);

}
