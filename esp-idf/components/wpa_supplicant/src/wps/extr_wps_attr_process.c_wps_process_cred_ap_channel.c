
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_credential {int ap_channel; } ;


 int MSG_DEBUG ;
 int WPA_GET_BE16 (int const*) ;
 int wpa_printf (int ,char*,int ) ;

__attribute__((used)) static int wps_process_cred_ap_channel(struct wps_credential *cred,
           const u8 *ap_channel)
{
 if (ap_channel == ((void*)0))
  return 0;

 cred->ap_channel = WPA_GET_BE16(ap_channel);
 wpa_printf(MSG_DEBUG, "WPS: AP Channel: %u", cred->ap_channel);

 return 0;
}
