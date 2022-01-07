
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_eapol_ie_parse {int const* rsn_ie; int rsn_ie_len; int const* mdie; int mdie_len; int const* ftie; int ftie_len; } ;


 int MSG_DEBUG ;
 int const WLAN_EID_FAST_BSS_TRANSITION ;
 int const WLAN_EID_MOBILITY_DOMAIN ;
 int const WLAN_EID_RSN ;
 int const WLAN_EID_VENDOR_SPECIFIC ;
 int memset (struct wpa_eapol_ie_parse*,int ,int) ;
 int wpa_hexdump (int ,char*,int const*,int) ;
 int wpa_hexdump_key (int ,char*,int const*,size_t) ;
 int wpa_parse_generic (int const*,int const*,struct wpa_eapol_ie_parse*) ;
 int wpa_printf (int ,char*,int const,int const,int) ;

int wpa_parse_kde_ies(const u8 *buf, size_t len, struct wpa_eapol_ie_parse *ie)
{
 const u8 *pos, *end;
 int ret = 0;

 memset(ie, 0, sizeof(*ie));
 for (pos = buf, end = pos + len; pos + 1 < end; pos += 2 + pos[1]) {
  if (pos[0] == 0xdd &&
      ((pos == buf + len - 1) || pos[1] == 0)) {

   break;
  }
  if (pos + 2 + pos[1] > end) {
   wpa_printf( MSG_DEBUG, "WPA: EAPOL-Key Key Data "
       "underflow (ie=%d len=%d pos=%d)",
       pos[0], pos[1], (int) (pos - buf));
   wpa_hexdump_key(MSG_DEBUG, "WPA: Key Data",
     buf, len);
   ret = -1;
   break;
  }
  if (*pos == WLAN_EID_RSN) {
   ie->rsn_ie = pos;
   ie->rsn_ie_len = pos[1] + 2;
  } else if (*pos == WLAN_EID_VENDOR_SPECIFIC) {
   ret = wpa_parse_generic(pos, end, ie);
   if (ret < 0)
    break;
   if (ret > 0) {
    ret = 0;
    break;
   }
  } else {
   wpa_hexdump(MSG_DEBUG, "WPA: Unrecognized EAPOL-Key "
        "Key Data IE", pos, 2 + pos[1]);
  }
 }

 return ret;
}
