
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int abs_count; } ;
typedef TYPE_1__ in_evdev_t ;




__attribute__((used)) static int in_evdev_get_config(void *drv_data, int what, int *val)
{
 in_evdev_t *dev = drv_data;

 switch (what) {
 case 128:
  *val = dev->abs_count;
  break;
 default:
  return -1;
 }

 return 0;
}
