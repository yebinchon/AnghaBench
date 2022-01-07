
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode_attr {int va_type; } ;
typedef int * mount_t ;


 int EACCES ;
 int KAUTH_DEBUG (char*,int ) ;
 int KAUTH_VNODE_ADD_FILE ;
 int KAUTH_VNODE_ADD_SUBDIRECTORY ;
 int KAUTH_VNODE_APPEND_DATA ;
 int KAUTH_VNODE_WRITE_DATA ;
 int KAUTH_VNODE_WRITE_EXTATTRIBUTES ;
 int KAUTH_VNODE_WRITE_RIGHTS ;
 int MNT_NOUSERXATTR ;


 int VDIR ;


 int vfs_flags (int *) ;
 int vnode_immutable (struct vnode_attr*,int,int) ;
 int vp ;

__attribute__((used)) static int
vnode_authorize_checkimmutable(mount_t mp, struct vnode_attr *vap, int rights, int ignore)
{
 int error;
 int append;






 switch(vap->va_type) {
 case 128:
 case 129:
 case 131:
 case 130:




  rights &= ~KAUTH_VNODE_WRITE_DATA;
  break;
 default:
  break;
 }

 error = 0;
 if (rights & KAUTH_VNODE_WRITE_RIGHTS) {


  if (mp != ((void*)0)) {


   if ((rights & KAUTH_VNODE_WRITE_EXTATTRIBUTES) &&
       (vfs_flags(mp) & MNT_NOUSERXATTR)) {
    KAUTH_DEBUG("%p    DENIED - filesystem disallowed extended attributes", vp);
    error = EACCES;
    goto out;
   }
  }





  append = 0;
  if (vap->va_type == VDIR) {
   if ((rights & (KAUTH_VNODE_ADD_FILE | KAUTH_VNODE_ADD_SUBDIRECTORY | KAUTH_VNODE_WRITE_EXTATTRIBUTES)) == rights)
    append = 1;
  } else {
   if ((rights & (KAUTH_VNODE_APPEND_DATA | KAUTH_VNODE_WRITE_EXTATTRIBUTES)) == rights)
    append = 1;
  }
  if ((error = vnode_immutable(vap, append, ignore)) != 0) {
   KAUTH_DEBUG("%p    DENIED - file is immutable", vp);
   goto out;
  }
 }
out:
 return(error);
}
