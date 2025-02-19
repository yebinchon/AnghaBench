
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int dummy; } ;
typedef int dev_t ;


 int EBUSY ;
 int ENXIO ;
 scalar_t__ PFDEV_MAX ;
 scalar_t__ PFDEV_PFM ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 scalar_t__ minor (int ) ;
 int pf_lock ;
 scalar_t__ pfdevcnt ;

__attribute__((used)) static int
pfopen(dev_t dev, int flags, int fmt, struct proc *p)
{
#pragma unused(flags, fmt, p)
 if (minor(dev) >= PFDEV_MAX)
  return (ENXIO);

 if (minor(dev) == PFDEV_PFM) {
  lck_mtx_lock(pf_lock);
  if (pfdevcnt != 0) {
   lck_mtx_unlock(pf_lock);
   return (EBUSY);
  }
  pfdevcnt++;
  lck_mtx_unlock(pf_lock);
 }
 return (0);
}
