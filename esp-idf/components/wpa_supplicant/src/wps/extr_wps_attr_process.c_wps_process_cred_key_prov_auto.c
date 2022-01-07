
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_credential {int dummy; } ;


 int MSG_DEBUG ;
 int wpa_printf (int ,char*,int const) ;

__attribute__((used)) static int wps_process_cred_key_prov_auto(struct wps_credential *cred,
       const u8 *key_prov_auto)
{
 if (key_prov_auto == ((void*)0))
  return 0;

 wpa_printf(MSG_DEBUG, "WPS: Key Provided Automatically: %d",
     *key_prov_auto);

 return 0;
}
