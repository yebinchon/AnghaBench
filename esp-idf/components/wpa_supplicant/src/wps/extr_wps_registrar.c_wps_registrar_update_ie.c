
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_registrar {int dummy; } ;


 int wps_set_ie (struct wps_registrar*) ;

int wps_registrar_update_ie(struct wps_registrar *reg)
{
 return wps_set_ie(reg);
}
