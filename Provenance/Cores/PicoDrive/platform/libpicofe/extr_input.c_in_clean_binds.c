
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* binds; int key_count; int drv_data; int drv_id; int probed; } ;
typedef TYPE_1__ in_dev_t ;
struct TYPE_5__ {int (* clean_binds ) (int ,int*,int*) ;} ;


 TYPE_3__ DRV (int ) ;
 int IN_BINDTYPE_COUNT ;
 int IN_MAX_DEVS ;
 int free (int*) ;
 TYPE_1__* in_devices ;
 int stub1 (int ,int*,int*) ;

void in_clean_binds(void)
{
 int i;

 for (i = 0; i < IN_MAX_DEVS; i++) {
  int ret, count, *binds, *def_binds;
  in_dev_t *dev = &in_devices[i];

  if (dev->binds == ((void*)0) || !dev->probed)
   continue;

  count = dev->key_count;
  binds = dev->binds;
  def_binds = binds + count * IN_BINDTYPE_COUNT;

  ret = DRV(dev->drv_id).clean_binds(dev->drv_data, binds, def_binds);
  if (ret == 0) {

   free(dev->binds);
   dev->binds = ((void*)0);
  }
 }
}
