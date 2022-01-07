
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int drv_data; int drv_id; int probed; } ;
typedef TYPE_1__ in_dev_t ;
struct TYPE_5__ {int (* update_analog ) (int ,int,int*) ;} ;


 TYPE_3__ DRV (int ) ;
 TYPE_1__* get_dev (int) ;
 int stub1 (int ,int,int*) ;

int in_update_analog(int dev_id, int axis_id, int *result)
{
 in_dev_t *dev = get_dev(dev_id);

 if (dev == ((void*)0) || !dev->probed)
  return -1;

 return DRV(dev->drv_id).update_analog(dev->drv_data, axis_id, result);
}
