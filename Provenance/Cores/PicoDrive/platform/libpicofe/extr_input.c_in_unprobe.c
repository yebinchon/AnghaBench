
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * drv_data; scalar_t__ probed; int drv_id; } ;
typedef TYPE_1__ in_dev_t ;
struct TYPE_5__ {int (* free ) (int *) ;} ;


 TYPE_3__ DRV (int ) ;
 int stub1 (int *) ;

__attribute__((used)) static void in_unprobe(in_dev_t *dev)
{
 if (dev->probed)
  DRV(dev->drv_id).free(dev->drv_data);
 dev->probed = 0;
 dev->drv_data = ((void*)0);
}
