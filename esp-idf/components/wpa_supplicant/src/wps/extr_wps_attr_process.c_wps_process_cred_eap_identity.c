
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_credential {int dummy; } ;


 int MSG_DEBUG ;
 int wpa_hexdump_ascii (int ,char*,int const*,size_t) ;

__attribute__((used)) static int wps_process_cred_eap_identity(struct wps_credential *cred,
      const u8 *identity,
      size_t identity_len)
{
 if (identity == ((void*)0))
  return 0;

 wpa_hexdump_ascii(MSG_DEBUG, "WPS: EAP Identity",
     identity, identity_len);

 return 0;
}
