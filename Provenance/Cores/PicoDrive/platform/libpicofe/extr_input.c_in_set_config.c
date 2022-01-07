
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int names ;
struct TYPE_4__ {int key_count; char const* const* key_names; int drv_data; int drv_id; scalar_t__ probed; } ;
typedef TYPE_1__ in_dev_t ;
struct TYPE_5__ {int (* set_config ) (int ,int,int const) ;} ;


 TYPE_3__ DRV (int ) ;
 int IN_CFG_BLOCKING ;


 TYPE_1__* get_dev (int) ;
 int in_set_blocking (int const) ;
 int lprintf (char*) ;
 int menu_last_used_dev ;
 int stub1 (int ,int,int const) ;

int in_set_config(int dev_id, int what, const void *val, int size)
{
 const char * const *names;
 const int *ival = val;
 in_dev_t *dev;
 int count;

 if (what == IN_CFG_BLOCKING)
  return in_set_blocking(*ival);

 dev = get_dev(dev_id);
 if (dev == ((void*)0))
  return -1;

 switch (what) {
 case 128:
  names = val;
  count = size / sizeof(names[0]);

  if (count < dev->key_count) {
   lprintf("input: set_key_names: not enough keys\n");
   return -1;
  }

  dev->key_names = names;
  return 0;
 case 129:

  menu_last_used_dev = dev_id;
  return 0;
 default:
  break;
 }

 if (dev->probed)
  return DRV(dev->drv_id).set_config(dev->drv_data, what, *ival);

 return -1;
}
