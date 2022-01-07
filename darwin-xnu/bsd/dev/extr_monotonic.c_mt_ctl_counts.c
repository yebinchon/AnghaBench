
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int user_addr_t ;
struct TYPE_5__ {scalar_t__ ctr_mask; } ;
union monotonic_ctl_counts {TYPE_1__ in; } ;
typedef int uint64_t ;
typedef TYPE_2__* mt_device_t ;
typedef int counts ;
struct TYPE_6__ {int mtd_nmonitors; int mtd_ncounters; int (* mtd_read ) (scalar_t__,int *) ;} ;


 int EINVAL ;
 int copyin (int ,union monotonic_ctl_counts*,int) ;
 int copyout (int ***,int ,int) ;
 int memset (int **,int ,int) ;
 int mt_device_assert_lock_held (TYPE_2__*) ;
 int stub1 (scalar_t__,int *) ;

__attribute__((used)) static int
mt_ctl_counts(mt_device_t dev, user_addr_t uptr)
{
 int error;
 union monotonic_ctl_counts ctl;

 mt_device_assert_lock_held(dev);

 error = copyin(uptr, &ctl, sizeof(ctl.in));
 if (error) {
  return error;
 }

 if (ctl.in.ctr_mask == 0) {
  return EINVAL;
 }

 {
  uint64_t counts[dev->mtd_nmonitors][dev->mtd_ncounters];
  memset(counts, 0,
    dev->mtd_ncounters * dev->mtd_nmonitors * sizeof(counts[0][0]));
  error = dev->mtd_read(ctl.in.ctr_mask, (uint64_t *)counts);
  if (error) {
   return error;
  }

  error = copyout(&counts, uptr, sizeof(counts));
  if (error) {
   return error;
  }
 }

 return 0;
}
