
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int dummy; } ;
typedef int fsid_t ;


 struct mount* mount_list_lookupby_fsid (int *,int,int ) ;

__attribute__((used)) static struct mount *
vfs_getvfs_locked(fsid_t *fsid)
{
 return(mount_list_lookupby_fsid(fsid, 1, 0));
}
