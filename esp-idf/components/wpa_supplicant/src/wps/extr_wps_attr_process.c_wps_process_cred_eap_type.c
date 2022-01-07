
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_credential {int dummy; } ;


 int MSG_DEBUG ;
 int wpa_hexdump (int ,char*,int const*,size_t) ;

__attribute__((used)) static int wps_process_cred_eap_type(struct wps_credential *cred,
         const u8 *eap_type, size_t eap_type_len)
{
 if (eap_type == ((void*)0))
  return 0;

 wpa_hexdump(MSG_DEBUG, "WPS: EAP Type", eap_type, eap_type_len);

 return 0;
}
