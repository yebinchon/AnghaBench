
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * binds; int drv_data; int drv_id; scalar_t__ probed; } ;
typedef TYPE_1__ in_dev_t ;
struct TYPE_5__ {int (* update ) (int ,int *,int*) ;} ;


 TYPE_3__ DRV (int ) ;
 int in_dev_count ;
 TYPE_1__* in_devices ;
 int stub1 (int ,int *,int*) ;

int in_update(int *result)
{
 int i, ret = 0;

 for (i = 0; i < in_dev_count; i++) {
  in_dev_t *dev = &in_devices[i];
  if (dev->probed && dev->binds != ((void*)0))
   ret |= DRV(dev->drv_id).update(dev->drv_data, dev->binds, result);
 }

 return ret;
}
