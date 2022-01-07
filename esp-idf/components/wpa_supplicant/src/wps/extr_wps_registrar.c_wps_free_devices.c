
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_registrar_device {int dev; struct wps_registrar_device* next; } ;


 int os_free (struct wps_registrar_device*) ;
 int wps_device_data_free (int *) ;

__attribute__((used)) static void wps_free_devices(struct wps_registrar_device *dev)
{
 struct wps_registrar_device *prev;

 while (dev) {
  prev = dev;
  dev = dev->next;
  wps_device_data_free(&prev->dev);
  os_free(prev);
 }
}
