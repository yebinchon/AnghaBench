
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct devfsmount {int * plane_root; } ;
typedef int devdirent_t ;


 int dev_free_hier (int *) ;
 int dev_free_name (int *) ;
 scalar_t__ devfs_nmountplanes ;
 int panic (char*) ;

void
devfs_free_plane(struct devfsmount *devfs_mp_p)
{
 devdirent_t * dirent_p;

 dirent_p = devfs_mp_p->plane_root;
 if (dirent_p) {
  dev_free_hier(dirent_p);
  dev_free_name(dirent_p);
 }
 devfs_mp_p->plane_root = ((void*)0);
 devfs_nmountplanes--;

 if (devfs_nmountplanes > (devfs_nmountplanes+1)) {
  panic("plane count wrapped around.\n");
 }
}
