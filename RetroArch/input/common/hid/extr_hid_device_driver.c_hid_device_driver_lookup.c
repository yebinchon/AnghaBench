
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {scalar_t__ (* detect ) (int ,int ) ;} ;
typedef TYPE_1__ hid_device_t ;


 TYPE_1__** hid_device_list ;
 scalar_t__ stub1 (int ,int ) ;

hid_device_t *hid_device_driver_lookup(uint16_t vendor_id, uint16_t product_id) {
  int i = 0;

  for(i = 0; hid_device_list[i] != ((void*)0); i++) {
    if(hid_device_list[i]->detect(vendor_id, product_id))
      return hid_device_list[i];
  }

  return ((void*)0);
}
