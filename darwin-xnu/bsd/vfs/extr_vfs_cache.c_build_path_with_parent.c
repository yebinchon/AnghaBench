
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_14__ ;
typedef struct TYPE_17__ TYPE_10__ ;


typedef TYPE_2__* vnode_t ;
typedef int vfs_context_t ;
struct vnode_attr {char* va_name; scalar_t__ va_parentid; } ;
typedef int ino64_t ;
struct TYPE_20__ {int v_flag; char* v_name; int v_id; TYPE_14__* v_mount; struct TYPE_20__* v_parent; } ;
struct TYPE_19__ {TYPE_2__* fd_rdir; } ;
struct TYPE_18__ {int mnt_flag; int mnt_kern_flag; TYPE_2__* mnt_vnodecovered; } ;
struct TYPE_17__ {TYPE_1__* p_fd; } ;


 int BUILDPATH_CHECKACCESS ;
 int BUILDPATH_CHECK_MOVED ;
 int BUILDPATH_NO_FS_ENTER ;
 int BUILDPATH_VOLUME_RELATIVE ;
 int EAGAIN ;
 int EINVAL ;
 int ENOENT ;
 int ENOSPC ;
 int FREE_ZONE (char*,int ,int ) ;
 int KAUTH_VNODE_SEARCH ;
 int MALLOC_ZONE (char*,int ,int ,int ,int ) ;
 int MAXPATHLEN ;
 int MNTK_PATH_FROM_ID ;
 int MNT_ROOTFS ;
 int M_NAMEI ;
 int M_WAITOK ;
 int NAME_CACHE_LOCK_SHARED () ;
 int NAME_CACHE_UNLOCK () ;
 TYPE_2__* NULLVP ;
 int VATTR_INIT (struct vnode_attr*) ;
 scalar_t__ VATTR_IS_SUPPORTED (struct vnode_attr*,int ) ;
 int VATTR_WANTED (struct vnode_attr*,int ) ;
 int VFS_VGET (TYPE_14__*,int ,TYPE_2__**,int ) ;
 int VISHARDLINK ;
 int VNODE_UPDATE_NAME ;
 int VNODE_UPDATE_PARENT ;
 int VROOT ;
 int caddr_t ;
 int memmove (char*,char*,int) ;
 TYPE_2__* rootvnode ;
 int strlen (char const*) ;
 int va_name ;
 int va_parentid ;
 TYPE_10__* vfs_context_proc (int ) ;
 int vnode_authorize (TYPE_2__*,int *,int ,int ) ;
 int vnode_getattr (TYPE_2__*,struct vnode_attr*,int ) ;
 scalar_t__ vnode_getwithvid (TYPE_2__*,int) ;
 int vnode_isdir (TYPE_2__*) ;
 int vnode_put (TYPE_2__*) ;
 int vnode_update_identity (TYPE_2__*,TYPE_2__*,char const*,int,int ,int ) ;

int
build_path_with_parent(vnode_t first_vp, vnode_t parent_vp, char *buff, int buflen, int *outlen, int flags, vfs_context_t ctx)
{
        vnode_t vp, tvp;
 vnode_t vp_with_iocount;
        vnode_t proc_root_dir_vp;
 char *end;
 const char *str;
 int len;
 int ret = 0;
 int fixhardlink;

 if (first_vp == NULLVP)
  return (EINVAL);

 if (buflen <= 1)
  return (ENOSPC);




 if (vfs_context_proc(ctx)->p_fd)
  proc_root_dir_vp = vfs_context_proc(ctx)->p_fd->fd_rdir;
 else
  proc_root_dir_vp = ((void*)0);

 vp_with_iocount = NULLVP;
again:
 vp = first_vp;

 end = &buff[buflen-1];
 *end = '\0';
 NAME_CACHE_LOCK_SHARED();




 while (vp && vp->v_flag & VROOT) {
  if (vp->v_mount == ((void*)0)) {
   ret = EINVAL;
   goto out_unlock;
  }
         if ((vp->v_mount->mnt_flag & MNT_ROOTFS) || (vp == proc_root_dir_vp)) {




          *--end = '/';

   goto out_unlock;
  } else {





   if (flags & BUILDPATH_VOLUME_RELATIVE) {
    *--end = '/';
    goto out_unlock;
   } else {
    vp = vp->v_mount->mnt_vnodecovered;
   }
  }
 }

 while ((vp != NULLVP) && (vp->v_parent != vp)) {
  int vid;






  fixhardlink = (vp->v_flag & VISHARDLINK) &&
                (vp->v_mount->mnt_kern_flag & MNTK_PATH_FROM_ID) &&
                !(flags & BUILDPATH_NO_FS_ENTER);

  if (!fixhardlink) {
   str = vp->v_name;

   if (str == ((void*)0) || *str == '\0') {
    if (vp->v_parent != ((void*)0))
     ret = EINVAL;
    else
     ret = ENOENT;
    goto out_unlock;
   }
   len = strlen(str);



   if ((end - buff) < (len + 1)) {
    ret = ENOSPC;
    goto out_unlock;
   }



   str += len;

   for (; len > 0; len--)
          *--end = *--str;



   *--end = '/';
  }




  if (((vp->v_parent != NULLVP) && !fixhardlink) ||
    (flags & BUILDPATH_NO_FS_ENTER)) {
   if ((vp->v_parent == NULLVP) && (rootvnode != vp)) {





    ret = ENOENT;


   }
   vp = vp->v_parent;







   if (vp && !vnode_isdir(vp) && vp->v_parent) {
    vp = vp->v_parent;
   }
  } else {



   struct vnode_attr va;
   vnode_t dvp;




   if (!(vp->v_mount->mnt_kern_flag & MNTK_PATH_FROM_ID)) {
    ret = ENOENT;
    goto out_unlock;
   }
   vid = vp->v_id;

   NAME_CACHE_UNLOCK();

   if (vp != first_vp && vp != parent_vp && vp != vp_with_iocount) {
    if (vp_with_iocount) {
     vnode_put(vp_with_iocount);
     vp_with_iocount = NULLVP;
    }
    if (vnode_getwithvid(vp, vid))
     goto again;
    vp_with_iocount = vp;
   }
   VATTR_INIT(&va);
   VATTR_WANTED(&va, va_parentid);

   if (fixhardlink) {
    VATTR_WANTED(&va, va_name);
    MALLOC_ZONE(va.va_name, caddr_t, MAXPATHLEN, M_NAMEI, M_WAITOK);
   } else {
    va.va_name = ((void*)0);
   }



   ret = vnode_getattr(vp, &va, ctx);

   if (fixhardlink) {
    if ((ret == 0) && (VATTR_IS_SUPPORTED(&va, va_name))) {
     str = va.va_name;
     vnode_update_identity(vp, ((void*)0), str, strlen(str), 0, VNODE_UPDATE_NAME);
    } else if (vp->v_name) {
     str = vp->v_name;
     ret = 0;
    } else {
     ret = ENOENT;
     goto bad_news;
    }
    len = strlen(str);




    if ((end - buff) < (len + 1)) {
     ret = ENOSPC;
    } else {

     str += len;

     for (; len > 0; len--) {
      *--end = *--str;
     }



     *--end = '/';
    }
bad_news:
    FREE_ZONE(va.va_name, MAXPATHLEN, M_NAMEI);
   }
   if (ret || !VATTR_IS_SUPPORTED(&va, va_parentid)) {
    ret = ENOENT;
    goto out;
   }



   if ((ret = VFS_VGET(vp->v_mount, (ino64_t)va.va_parentid, &dvp, ctx)))
    goto out;

   if (!fixhardlink && (vp->v_parent != dvp))
    vnode_update_identity(vp, dvp, ((void*)0), 0, 0, VNODE_UPDATE_PARENT);

   if (vp_with_iocount)
    vnode_put(vp_with_iocount);
   vp = dvp;
   vp_with_iocount = vp;

   NAME_CACHE_LOCK_SHARED();







   if (vp && !vnode_isdir(vp) && vp->v_parent)
    vp = vp->v_parent;
  }

  if (vp && (flags & BUILDPATH_CHECKACCESS)) {
   vid = vp->v_id;

   NAME_CACHE_UNLOCK();

   if (vp != first_vp && vp != parent_vp && vp != vp_with_iocount) {
    if (vp_with_iocount) {
     vnode_put(vp_with_iocount);
     vp_with_iocount = NULLVP;
    }
    if (vnode_getwithvid(vp, vid))
     goto again;
    vp_with_iocount = vp;
   }
   if ((ret = vnode_authorize(vp, ((void*)0), KAUTH_VNODE_SEARCH, ctx)))
    goto out;

   NAME_CACHE_LOCK_SHARED();
  }







  tvp = vp;

  while (tvp) {
   if (tvp == proc_root_dir_vp)
    goto out_unlock;

   if (!(tvp->v_flag & VROOT) || !tvp->v_mount)
    break;

   if (flags & BUILDPATH_VOLUME_RELATIVE) {

    tvp = ((void*)0);
   } else {
    tvp = tvp->v_mount->mnt_vnodecovered;
   }
  }
  if (tvp == NULLVP)
   goto out_unlock;
  vp = tvp;
 }
out_unlock:
 NAME_CACHE_UNLOCK();
out:
 if (vp_with_iocount)
  vnode_put(vp_with_iocount);



 memmove(buff, end, &buff[buflen] - end);




 *outlen = &buff[buflen] - end;





 if ((ret == ENOENT) && (flags & BUILDPATH_CHECK_MOVED)) {
  ret = EAGAIN;
 }

 return (ret);
}
