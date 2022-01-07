
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int user_addr_t ;
struct TYPE_7__ {int ctr; } ;
struct TYPE_6__ {int config; } ;
union monotonic_ctl_add {TYPE_2__ out; TYPE_1__ in; } ;
typedef int uint32_t ;
typedef TYPE_3__* mt_device_t ;
struct TYPE_8__ {int (* mtd_add ) (int *,int *) ;} ;


 int copyin (int ,union monotonic_ctl_add*,int) ;
 int copyout (union monotonic_ctl_add*,int ,int) ;
 int mt_device_assert_lock_held (TYPE_3__*) ;
 int stub1 (int *,int *) ;

__attribute__((used)) static int
mt_ctl_add(mt_device_t dev, user_addr_t uptr)
{
 int error;
 uint32_t ctr;
 union monotonic_ctl_add ctl;

 mt_device_assert_lock_held(dev);

 error = copyin(uptr, &ctl, sizeof(ctl.in));
 if (error) {
  return error;
 }

 error = dev->mtd_add(&ctl.in.config, &ctr);
 if (error) {
  return error;
 }

 ctl.out.ctr = ctr;

 error = copyout(&ctl, uptr, sizeof(ctl.out));
 if (error) {
  return error;
 }

 return 0;
}
