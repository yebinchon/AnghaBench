
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wps_registrar_device {int uuid; int dev; struct wps_registrar_device* next; } ;
struct wps_registrar {struct wps_registrar_device* devices; } ;
struct wps_device_data {int mac_addr; } ;


 int WPS_UUID_LEN ;
 int os_memcpy (int ,int const*,int ) ;
 scalar_t__ os_zalloc (int) ;
 int wps_device_clone_data (int *,struct wps_device_data*) ;
 struct wps_registrar_device* wps_device_get (struct wps_registrar*,int ) ;

int wps_device_store(struct wps_registrar *reg,
       struct wps_device_data *dev, const u8 *uuid)
{
 struct wps_registrar_device *d;

 d = wps_device_get(reg, dev->mac_addr);
 if (d == ((void*)0)) {
  d = (struct wps_registrar_device *)os_zalloc(sizeof(*d));
  if (d == ((void*)0))
   return -1;
  d->next = reg->devices;
  reg->devices = d;
 }

 wps_device_clone_data(&d->dev, dev);
 os_memcpy(d->uuid, uuid, WPS_UUID_LEN);

 return 0;
}
