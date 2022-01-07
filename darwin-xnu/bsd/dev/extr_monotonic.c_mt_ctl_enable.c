
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int user_addr_t ;
struct TYPE_5__ {int enable; } ;
union monotonic_ctl_enable {TYPE_1__ in; } ;
typedef TYPE_2__* mt_device_t ;
typedef int ctl ;
struct TYPE_6__ {int (* mtd_enable ) (int ) ;} ;


 int copyin (int ,union monotonic_ctl_enable*,int) ;
 int mt_device_assert_lock_held (TYPE_2__*) ;
 int stub1 (int ) ;

__attribute__((used)) static int
mt_ctl_enable(mt_device_t dev, user_addr_t uptr)
{
 int error;
 union monotonic_ctl_enable ctl;

 mt_device_assert_lock_held(dev);

 error = copyin(uptr, &ctl, sizeof(ctl));
 if (error) {
  return error;
 }

 dev->mtd_enable(ctl.in.enable);

 return 0;
}
