
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * vnode_t ;
struct vfsstatfs {int f_fstypename; } ;
typedef int mount_t ;


 int EINVAL ;
 int ENOENT ;
 int * NULLVP ;
 int NULLVPTOLOWERVID (int *) ;
 int * NULLVPTOLOWERVP (int *) ;
 scalar_t__ nullfs_checkspecialvp (int *) ;
 scalar_t__ strcmp (int ,char*) ;
 struct vfsstatfs* vfs_statfs (int ) ;
 int vnode_getwithvid (int *,int ) ;
 int vnode_mount (int *) ;

int
nullfs_getbackingvnode(vnode_t in_vp, vnode_t* out_vpp)
{
 int result = EINVAL;

 if (out_vpp == ((void*)0) || in_vp == ((void*)0)) {
  goto end;
 }

 struct vfsstatfs * sp = ((void*)0);
 mount_t mp = vnode_mount(in_vp);

 sp = vfs_statfs(mp);

 if (strcmp(sp->f_fstypename, "nullfs") != 0 || nullfs_checkspecialvp(in_vp)) {
  *out_vpp = NULLVP;
  result = ENOENT;
  goto end;
 }

 vnode_t lvp = NULLVPTOLOWERVP(in_vp);
 if ((result = vnode_getwithvid(lvp, NULLVPTOLOWERVID(in_vp)))) {
  goto end;
 }

 *out_vpp = lvp;

end:
 return result;
}
