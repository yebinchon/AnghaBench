
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u8 ;
typedef int u32 ;
struct ieee802_1x_hdr {int type; } ;


 int ESP_OK ;




 int MSG_ERROR ;
 int eap_sm_rx_eapol (int *,int *,int ,int *) ;
 int wpa_printf (int ,char*,int) ;
 int wpa_sm_rx_eapol (int *,int *,int ) ;

__attribute__((used)) static int wpa2_ent_rx_eapol(u8 *src_addr, u8 *buf, u32 len, uint8_t *bssid)
{
    struct ieee802_1x_hdr *hdr;
    int ret = ESP_OK;

    hdr = (struct ieee802_1x_hdr *) buf;

    switch (hdr->type) {
     case 129:
     case 128:
     case 130:
      ret = eap_sm_rx_eapol(src_addr, buf, len, bssid);
      break;
     case 131:
            ret = wpa_sm_rx_eapol(src_addr, buf, len);
      break;
     default:
  wpa_printf(MSG_ERROR, "Unknown EAPOL packet type - %d\n", hdr->type);
      break;
    }

 return ret;
}
