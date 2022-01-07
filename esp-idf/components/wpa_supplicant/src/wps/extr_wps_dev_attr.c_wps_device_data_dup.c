
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wps_device_data {int rf_bands; int os_version; int pri_dev_type; void* serial_number; void* model_number; void* model_name; void* manufacturer; void* device_name; } ;


 int WPS_DEV_TYPE_LEN ;
 int os_memcpy (int ,int ,int ) ;
 void* os_strdup (void*) ;

void wps_device_data_dup(struct wps_device_data *dst,
    const struct wps_device_data *src)
{
 if (src->device_name)
  dst->device_name = os_strdup(src->device_name);
 if (src->manufacturer)
  dst->manufacturer = os_strdup(src->manufacturer);
 if (src->model_name)
  dst->model_name = os_strdup(src->model_name);
 if (src->model_number)
  dst->model_number = os_strdup(src->model_number);
 if (src->serial_number)
  dst->serial_number = os_strdup(src->serial_number);
 os_memcpy(dst->pri_dev_type, src->pri_dev_type, WPS_DEV_TYPE_LEN);
 dst->os_version = src->os_version;
 dst->rf_bands = src->rf_bands;
}
