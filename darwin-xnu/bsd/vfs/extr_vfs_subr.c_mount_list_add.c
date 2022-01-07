
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mount_t ;


 int TAILQ_INSERT_TAIL (int *,int ,int ) ;
 int mnt_list ;
 int mount_list_lock () ;
 int mount_list_unlock () ;
 int mountlist ;
 int nummounts ;
 scalar_t__ system_inshutdown ;

int
mount_list_add(mount_t mp)
{
 int res;

 mount_list_lock();
 if (system_inshutdown != 0) {
  res = -1;
 } else {
  TAILQ_INSERT_TAIL(&mountlist, mp, mnt_list);
  nummounts++;
  res = 0;
 }
 mount_list_unlock();

 return res;
}
