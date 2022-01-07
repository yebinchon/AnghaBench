
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_device_data {int * serial_number; int * model_number; int * model_name; int * manufacturer; int * device_name; } ;


 int os_free (int *) ;

void wps_device_data_free(struct wps_device_data *dev)
{
 os_free(dev->device_name);
 dev->device_name = ((void*)0);
 os_free(dev->manufacturer);
 dev->manufacturer = ((void*)0);
 os_free(dev->model_name);
 dev->model_name = ((void*)0);
 os_free(dev->model_number);
 dev->model_number = ((void*)0);
 os_free(dev->serial_number);
 dev->serial_number = ((void*)0);
}
