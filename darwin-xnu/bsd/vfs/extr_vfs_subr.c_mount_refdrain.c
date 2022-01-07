
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* mount_t ;
typedef int caddr_t ;
struct TYPE_4__ {int * tqh_first; } ;
struct TYPE_5__ {int mnt_lflag; TYPE_1__ mnt_vnodelist; int mnt_mlock; scalar_t__ mnt_count; } ;


 int MNT_LDRAIN ;
 int PVFS ;
 int msleep (int ,int *,int ,char*,int *) ;
 int panic (char*) ;

int
mount_refdrain(mount_t mp)
{
 if (mp->mnt_lflag & MNT_LDRAIN)
  panic("already in drain");
 mp->mnt_lflag |= MNT_LDRAIN;

 while (mp->mnt_count)
  msleep((caddr_t)&mp->mnt_lflag, &mp->mnt_mlock, PVFS, "mount_drain", ((void*)0));

 if (mp->mnt_vnodelist.tqh_first != ((void*)0))
   panic("mount_refdrain: dangling vnode");

 mp->mnt_lflag &= ~MNT_LDRAIN;

 return(0);
}
