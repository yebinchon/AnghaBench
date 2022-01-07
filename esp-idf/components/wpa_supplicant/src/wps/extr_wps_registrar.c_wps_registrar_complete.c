
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_registrar {int pbc_ignore_uuid; int pbc_ignore_start; scalar_t__ pbc; } ;


 int MSG_DEBUG ;
 int WPS_UUID_LEN ;
 int os_get_time (int *) ;
 int os_memcpy (int ,int const*,int ) ;
 int wpa_hexdump_key (int ,char*,int const*,size_t) ;
 scalar_t__ wps_registrar_invalidate_wildcard_pin (struct wps_registrar*,int const*,size_t) ;
 int wps_registrar_pbc_completed (struct wps_registrar*) ;
 int wps_registrar_pin_completed (struct wps_registrar*) ;
 int wps_registrar_remove_pbc_session (struct wps_registrar*,int const*,int *) ;

void wps_registrar_complete(struct wps_registrar *registrar, const u8 *uuid_e,
       const u8 *dev_pw, size_t dev_pw_len)
{
 if (registrar->pbc) {
  wps_registrar_remove_pbc_session(registrar,
       uuid_e, ((void*)0));
  wps_registrar_pbc_completed(registrar);
  os_get_time(&registrar->pbc_ignore_start);
  os_memcpy(registrar->pbc_ignore_uuid, uuid_e, WPS_UUID_LEN);
 } else {



 }
}
