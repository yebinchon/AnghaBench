
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int key_count; int does_combos; int drv_data; int drv_id; int probed; } ;
typedef TYPE_1__ in_dev_t ;
struct TYPE_5__ {int (* get_config ) (int ,int,int*) ;} ;


 TYPE_3__ DRV (int ) ;




 TYPE_1__* get_dev (int) ;
 int stub1 (int ,int,int*) ;

int in_get_config(int dev_id, int what, void *val)
{
 int *ival = val;
 in_dev_t *dev;

 dev = get_dev(dev_id);
 if (dev == ((void*)0) || val == ((void*)0))
  return -1;

 switch (what) {
 case 131:
  *ival = dev->key_count;
  break;
 case 129:
  *ival = dev->does_combos;
  break;
 case 130:
 case 128:
  return -1;
 default:
  if (!dev->probed)
   return -1;

  return DRV(dev->drv_id).get_config(dev->drv_data, what, ival);
 }

 return 0;
}
