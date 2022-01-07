
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* mount_t ;
struct TYPE_3__ {int mnt_lflag; } ;


 int MNT_LFORCE ;

int
vfs_isforce(mount_t mp)
{
 if (mp->mnt_lflag & MNT_LFORCE)
  return(1);
 else
  return(0);
}
