
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct timeval {int dummy; } ;
typedef int devnode_t ;


 int DEVFS_ATTR_LOCK_SPIN () ;
 int DEVFS_ATTR_UNLOCK () ;
 int dn_times_locked (int *,struct timeval*,struct timeval*,struct timeval*,int ) ;
 int microtime (struct timeval*) ;

void
dn_times_now(devnode_t * dnp, uint32_t just_changed_flags)
{
 struct timeval now;

 DEVFS_ATTR_LOCK_SPIN();
 microtime(&now);
 dn_times_locked(dnp, &now, &now, &now, just_changed_flags);
 DEVFS_ATTR_UNLOCK();
}
