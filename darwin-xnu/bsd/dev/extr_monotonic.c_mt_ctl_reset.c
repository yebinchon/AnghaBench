
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* mt_device_t ;
struct TYPE_4__ {int (* mtd_reset ) () ;} ;


 int mt_device_assert_lock_held (TYPE_1__*) ;
 int stub1 () ;

__attribute__((used)) static int
mt_ctl_reset(mt_device_t dev)
{
 mt_device_assert_lock_held(dev);
 dev->mtd_reset();
 return 0;
}
