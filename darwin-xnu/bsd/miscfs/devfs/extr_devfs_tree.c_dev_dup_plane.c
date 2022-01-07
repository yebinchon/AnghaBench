
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devfsmount {int * plane_root; } ;
typedef int devdirent_t ;


 int dev_dup_entry (int *,int ,int **,struct devfsmount*) ;
 int dev_root ;
 int devfs_nmountplanes ;

int
dev_dup_plane(struct devfsmount *devfs_mp_p)
{
 devdirent_t * new;
 int error = 0;

 if ((error = dev_dup_entry(((void*)0), dev_root, &new, devfs_mp_p)))
         return error;
 devfs_mp_p->plane_root = new;
 devfs_nmountplanes++;
 return error;
}
