
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mount_list_lock () ;
 int mount_list_unlock () ;
 int nummounts ;

__attribute__((used)) static int
mount_getvfscnt(void)
{
 int ret;

 mount_list_lock();
 ret = nummounts;
 mount_list_unlock();
 return (ret);

}
