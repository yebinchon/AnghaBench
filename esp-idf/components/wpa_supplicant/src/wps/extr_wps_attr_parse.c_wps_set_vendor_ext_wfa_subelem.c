
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_parse_attr {int const* version2; int const* authorized_macs; int authorized_macs_len; int const* network_key_shareable; int const* request_to_enroll; int const* settings_delay_time; } ;


 int MSG_DEBUG ;





 int wpa_printf (int ,char*,int,...) ;

__attribute__((used)) static int wps_set_vendor_ext_wfa_subelem(struct wps_parse_attr *attr,
       u8 id, u8 len, const u8 *pos)
{
 wpa_printf(MSG_DEBUG, "WPS: WFA subelement id=%u len=%u",
     id, len);
 switch (id) {
 case 128:
  if (len != 1) {
   wpa_printf(MSG_DEBUG, "WPS: Invalid Version2 length "
       "%u", len);
   return -1;
  }
  attr->version2 = pos;
  break;
 case 132:
  attr->authorized_macs = pos;
  attr->authorized_macs_len = len;
  break;
 case 131:
  if (len != 1) {
   wpa_printf(MSG_DEBUG, "WPS: Invalid Network Key "
       "Shareable length %u", len);
   return -1;
  }
  attr->network_key_shareable = pos;
  break;
 case 130:
  if (len != 1) {
   wpa_printf(MSG_DEBUG, "WPS: Invalid Request to Enroll "
       "length %u", len);
   return -1;
  }
  attr->request_to_enroll = pos;
  break;
 case 129:
  if (len != 1) {
   wpa_printf(MSG_DEBUG, "WPS: Invalid Settings Delay "
       "Time length %u", len);
   return -1;
  }
  attr->settings_delay_time = pos;
  break;
 default:
  wpa_printf(MSG_DEBUG, "WPS: Skipped unknown WFA Vendor "
      "Extension subelement %u", id);
  break;
 }

 return 0;
}
