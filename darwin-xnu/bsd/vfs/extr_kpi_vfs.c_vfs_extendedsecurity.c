
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* mount_t ;
struct TYPE_3__ {int mnt_kern_flag; } ;


 int MNTK_EXTENDED_SECURITY ;

int
vfs_extendedsecurity(mount_t mp)
{
 return(mp->mnt_kern_flag & MNTK_EXTENDED_SECURITY);
}
