
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * name; int * binds; scalar_t__ probed; int drv_id; } ;
typedef TYPE_1__ in_dev_t ;


 int IN_MAX_DEVS ;
 TYPE_1__* in_devices ;
 int lprintf (char*,...) ;

void in_debug_dump(void)
{
 int i;

 lprintf("# drv probed binds name\n");
 for (i = 0; i < IN_MAX_DEVS; i++) {
  in_dev_t *d = &in_devices[i];
  if (!d->probed && d->name == ((void*)0) && d->binds == ((void*)0))
   continue;
  lprintf("%d %3d %6c %5c %s\n", i, d->drv_id, d->probed ? 'y' : 'n',
   d->binds ? 'y' : 'n', d->name);
 }
}
