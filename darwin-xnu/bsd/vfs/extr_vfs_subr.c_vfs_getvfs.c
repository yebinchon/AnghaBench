
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mount {int dummy; } ;
typedef int fsid_t ;


 struct mount* mount_list_lookupby_fsid (int *,int ,int ) ;

struct mount *
vfs_getvfs(fsid_t *fsid)
{
 return (mount_list_lookupby_fsid(fsid, 0, 0));
}
