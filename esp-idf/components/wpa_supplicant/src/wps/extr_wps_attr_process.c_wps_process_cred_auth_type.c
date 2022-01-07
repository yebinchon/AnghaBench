
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_credential {int auth_type; } ;


 int MSG_DEBUG ;
 int WPA_GET_BE16 (int const*) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int wps_process_cred_auth_type(struct wps_credential *cred,
          const u8 *auth_type)
{
 if (auth_type == ((void*)0)) {
  wpa_printf(MSG_DEBUG, "WPS: Credential did not include "
      "Authentication Type");
  return -1;
 }

 cred->auth_type = WPA_GET_BE16(auth_type);
 wpa_printf(MSG_DEBUG, "WPS: Authentication Type: 0x%x",
     cred->auth_type);

 return 0;
}
