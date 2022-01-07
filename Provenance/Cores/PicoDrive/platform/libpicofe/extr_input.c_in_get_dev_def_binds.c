
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int const* binds; int key_count; } ;
typedef TYPE_1__ in_dev_t ;


 int IN_BINDTYPE_COUNT ;
 TYPE_1__* get_dev (int) ;

const int *in_get_dev_def_binds(int dev_id)
{
 in_dev_t *dev = get_dev(dev_id);
 if (dev == ((void*)0))
  return ((void*)0);

 return dev->binds + dev->key_count * IN_BINDTYPE_COUNT;
}
