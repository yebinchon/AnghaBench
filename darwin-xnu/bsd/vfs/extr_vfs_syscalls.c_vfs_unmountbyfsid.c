
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vfs_context_t ;
typedef scalar_t__ mount_t ;
typedef int fsid_t ;


 int ENOENT ;
 int mount_iterdrop (scalar_t__) ;
 scalar_t__ mount_list_lookupby_fsid (int *,int ,int) ;
 int mount_ref (scalar_t__,int ) ;
 int safedounmount (scalar_t__,int,int ) ;

int
vfs_unmountbyfsid(fsid_t *fsid, int flags, vfs_context_t ctx)
{
 mount_t mp;

 mp = mount_list_lookupby_fsid(fsid, 0, 1);
 if (mp == (mount_t)0) {
  return(ENOENT);
 }
 mount_ref(mp, 0);
 mount_iterdrop(mp);

 return(safedounmount(mp, flags, ctx));
}
