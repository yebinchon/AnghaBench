
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* set_config ) (int ,int ,int) ;} ;
struct TYPE_3__ {int drv_data; int drv_id; int probed; } ;


 TYPE_2__ DRV (int ) ;
 int IN_CFG_BLOCKING ;
 int in_dev_count ;
 TYPE_1__* in_devices ;
 int in_have_async_devs ;
 int in_update_keycode (int *,int *,int *,int ) ;
 scalar_t__ menu_key_state ;
 int stub1 (int ,int ,int) ;

__attribute__((used)) static int in_set_blocking(int is_blocking)
{
 int i, ret;


 if (!in_have_async_devs) {
  for (i = 0; i < in_dev_count; i++) {
   if (!in_devices[i].probed)
    continue;

   DRV(in_devices[i].drv_id).set_config(
    in_devices[i].drv_data, IN_CFG_BLOCKING,
    is_blocking);
  }
 }

 menu_key_state = 0;


 do {
  ret = in_update_keycode(((void*)0), ((void*)0), ((void*)0), 0);
 } while (ret >= 0);

 return 0;
}
