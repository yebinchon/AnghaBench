
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int mnt_mntlabel; } ;


 int mac_mount_label_alloc () ;

void
mac_mount_label_init(struct mount *mp)
{

 mp->mnt_mntlabel = mac_mount_label_alloc();
}
