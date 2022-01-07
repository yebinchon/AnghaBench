
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_registrar {int dummy; } ;


 int MSG_DEBUG ;
 int wpa_printf (int ,char*) ;
 int wps_registrar_stop_pbc (struct wps_registrar*) ;

__attribute__((used)) static void wps_registrar_pbc_completed(struct wps_registrar *reg)
{
 wpa_printf(MSG_DEBUG, "WPS: PBC completed - stopping PBC mode");

 wps_registrar_stop_pbc(reg);
}
