
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_device_data {int * serial_number; int * device_name; int * model_number; int * model_name; int * manufacturer; } ;


 int ESP_FAIL ;
 int os_free (int *) ;
 int * s_factory_info ;

int wps_dev_deinit(struct wps_device_data *dev)
{
    int ret = 0;

    if (!dev) {
        return ESP_FAIL;
    }

    if (dev->manufacturer) {
        os_free(dev->manufacturer);
    }
    if (dev->model_name) {
        os_free(dev->model_name);
    }
    if (dev->model_number) {
        os_free(dev->model_number);
    }
    if (dev->device_name) {
        os_free(dev->device_name);
    }
    if (dev->serial_number) {
        os_free(dev->serial_number);
    }

    if (s_factory_info) {
        os_free(s_factory_info);
        s_factory_info = ((void*)0);
    }

    return ret;
}
