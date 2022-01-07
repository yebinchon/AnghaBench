
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int hid_driver_t ;
struct TYPE_2__ {int slot; } ;
typedef TYPE_1__ ds3_instance_t ;



__attribute__((used)) static void *ds3_pad_init(void *data, uint32_t slot, hid_driver_t *driver)
{
   ds3_instance_t *pad = (ds3_instance_t *)data;
   pad->slot = slot;

   return data;
}
