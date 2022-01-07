
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int devnode_t ;
typedef int devdirent_t ;
struct TYPE_2__ {int * de_dnp; } ;


 int DEVFS_LOCK () ;
 int DEVFS_UNLOCK () ;
 int DEV_DEVFD ;
 int M_CACHE ;
 int NFDCACHE ;
 int dev_add_entry (char*,int *,int ,int *,int *,int *,int **) ;
 TYPE_1__* dev_root ;
 int devfs_fdesc_makelinks () ;
 int fdesc_lckgrp ;
 int fdesc_mtx ;
 int fdhash ;
 int fdhashtbl ;
 int hashinit (int ,int ,int *) ;
 int lck_grp_alloc_init (char*,int *) ;
 int lck_mtx_init (int *,int ,int *) ;

int
devfs_fdesc_init()
{
 int error = 0;
 devnode_t *rootdir = dev_root->de_dnp;
 devdirent_t *direntp;


 fdhashtbl = hashinit(NFDCACHE, M_CACHE, &fdhash);
 fdesc_lckgrp = lck_grp_alloc_init("fdesc", ((void*)0));
 lck_mtx_init(&fdesc_mtx, fdesc_lckgrp, ((void*)0));

 DEVFS_LOCK();
 dev_add_entry("fd", rootdir, DEV_DEVFD, ((void*)0), ((void*)0), ((void*)0), &direntp);
 devfs_fdesc_makelinks();
 DEVFS_UNLOCK();

 return(error);
}
