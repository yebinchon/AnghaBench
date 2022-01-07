
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OSLock (int ) ;
 int obj_lock ;

void LockTrackingList()
{
 OSLock(obj_lock);
}
