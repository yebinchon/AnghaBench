
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_registrar {int devices; int extra_cred; int pbc_sessions; int nfc_pw_tokens; int pins; } ;


 int os_free (struct wps_registrar*) ;
 int wpabuf_free (int ) ;
 int wps_free_devices (int ) ;
 int wps_free_nfc_pw_tokens (int *,int ) ;
 int wps_free_pbc_sessions (int ) ;
 int wps_free_pins (int *) ;

void wps_registrar_deinit(struct wps_registrar *reg)
{
 if (reg == ((void*)0))
  return;







 wps_free_pbc_sessions(reg->pbc_sessions);
 wpabuf_free(reg->extra_cred);
 wps_free_devices(reg->devices);
 os_free(reg);
}
