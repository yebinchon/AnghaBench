
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct wps_data {size_t dev_password_len; int * dev_password; int peer_dev; int uuid_e; TYPE_2__* wps; TYPE_1__* nfc_pw_token; scalar_t__ pbc; } ;
struct TYPE_4__ {int registrar; } ;
struct TYPE_3__ {size_t dev_pw_len; int * dev_pw; } ;


 int MSG_DEBUG ;
 int os_free (int *) ;
 scalar_t__ os_malloc (size_t) ;
 int os_memcpy (int *,int const*,size_t) ;
 int wpa_printf (int ,char*) ;
 int wps_cb_pin_needed (int ,int ,int *) ;
 int * wps_registrar_get_pin (int ,int ,size_t*) ;

__attribute__((used)) static int wps_get_dev_password(struct wps_data *wps)
{
 const u8 *pin;
 size_t pin_len = 0;

 os_free(wps->dev_password);
 wps->dev_password = ((void*)0);

 if (wps->pbc) {
  wpa_printf(MSG_DEBUG, "WPS: Use default PIN for PBC");
  pin = (const u8 *) "00000000";
  pin_len = 8;







 } else {
 }

 wps->dev_password = (u8 *)os_malloc(pin_len);
 if (wps->dev_password == ((void*)0))
  return -1;
 os_memcpy(wps->dev_password, pin, pin_len);
 wps->dev_password_len = pin_len;

 return 0;
}
