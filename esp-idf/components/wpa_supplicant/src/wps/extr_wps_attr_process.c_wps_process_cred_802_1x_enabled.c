
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_credential {int dummy; } ;


 int MSG_DEBUG ;
 int wpa_printf (int ,char*,int const) ;

__attribute__((used)) static int wps_process_cred_802_1x_enabled(struct wps_credential *cred,
        const u8 *dot1x_enabled)
{
 if (dot1x_enabled == ((void*)0))
  return 0;

 wpa_printf(MSG_DEBUG, "WPS: 802.1X Enabled: %d", *dot1x_enabled);

 return 0;
}
