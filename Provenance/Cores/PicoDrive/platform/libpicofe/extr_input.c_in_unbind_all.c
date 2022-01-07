
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int key_count; int* binds; } ;
typedef TYPE_1__ in_dev_t ;


 int IN_BINDTYPE_COUNT ;
 size_t IN_BIND_OFFS (int,int) ;
 int IN_MAX_DEVS ;
 TYPE_1__* in_devices ;
 int memset (int*,int ,int) ;

void in_unbind_all(int dev_id_, int act_mask, int bind_type)
{
 int dev_id = 0, dev_last = IN_MAX_DEVS - 1;
 int i, count;
 in_dev_t *dev;

 if (dev_id_ >= 0)
  dev_id = dev_last = dev_id_;

 if (bind_type >= IN_BINDTYPE_COUNT)
  return;

 for (; dev_id <= dev_last; dev_id++) {
  dev = &in_devices[dev_id];
  count = dev->key_count;

  if (dev->binds == ((void*)0))
   continue;

  if (act_mask != -1) {
   for (i = 0; i < count; i++)
    dev->binds[IN_BIND_OFFS(i, bind_type)] &= ~act_mask;
  }
  else
   memset(dev->binds, 0, sizeof(dev->binds[0]) * count * IN_BINDTYPE_COUNT);
 }
}
