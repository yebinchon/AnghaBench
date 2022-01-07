
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mount_getvfscnt () ;

__attribute__((used)) static int
sysctl_vfs_getvfscnt(void)
{
 return(mount_getvfscnt());
}
