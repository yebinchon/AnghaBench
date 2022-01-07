
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnop_readdir_args {int a_flags; int* a_numdirent; struct uio* a_uio; struct vnode* a_vp; } ;
struct vnode {int dummy; } ;
struct uio {int dummy; } ;
struct null_mount {int nullm_lowerrootvp; int nullm_lowerrootvid; struct vnode* nullm_rootvp; } ;
typedef int off_t ;
typedef scalar_t__ ino_t ;


 int EINVAL ;
 int EMSGSIZE ;
 int ERANGE ;
 struct null_mount* MOUNTTONULLMOUNT (int ) ;
 scalar_t__ NULL_ROOT_INO ;
 scalar_t__ NULL_SECOND_INO ;
 scalar_t__ NULL_THIRD_INO ;
 int VNODE_READDIR_EXTENDED ;
 int VNODE_READDIR_REQSEEKOFF ;
 int store_entry_special (scalar_t__,char const*,struct uio*) ;
 int uio_offset (struct uio*) ;
 int uio_setoffset (struct uio*,int) ;
 char* vnode_getname_printable (int ) ;
 scalar_t__ vnode_getwithvid (int ,int ) ;
 int vnode_mount (struct vnode*) ;
 int vnode_put (int ) ;
 int vnode_putname_printable (char const*) ;

__attribute__((used)) static int
nullfs_special_readdir(struct vnop_readdir_args * ap)
{
 struct vnode * vp = ap->a_vp;
 struct uio * uio = ap->a_uio;
 struct null_mount * null_mp = MOUNTTONULLMOUNT(vnode_mount(vp));
 off_t offset = uio_offset(uio);
 int error = ERANGE;
 int items = 0;
 ino_t ino = 0;
 const char * name = ((void*)0);

 if (ap->a_flags & (VNODE_READDIR_EXTENDED | VNODE_READDIR_REQSEEKOFF))
  return (EINVAL);

 if (offset == 0) {

  if (vp == null_mp->nullm_rootvp) {
   ino = NULL_ROOT_INO;
  } else
  {
   ino = NULL_SECOND_INO;
  }
  error = store_entry_special(ino, ".", uio);
  if (error) {
   goto out;
  }
  offset++;
  items++;
 }
 if (offset == 1) {


  ino = NULL_ROOT_INO;

  error = store_entry_special(ino, "..", uio);
  if (error) {
   goto out;
  }
  offset++;
  items++;
 }
 if (offset == 2) {

  if (vp == null_mp->nullm_rootvp) {
   ino = NULL_SECOND_INO;
   name = "d";
  } else
  {
   ino = NULL_THIRD_INO;
   if (vnode_getwithvid(null_mp->nullm_lowerrootvp, null_mp->nullm_lowerrootvid)) {



    error = 0;
    goto out;
   }
   name = vnode_getname_printable(null_mp->nullm_lowerrootvp);
  }
  error = store_entry_special(ino, name, uio);

  if (ino == NULL_THIRD_INO) {
   vnode_putname_printable(name);
   vnode_put(null_mp->nullm_lowerrootvp);
  }

  if (error) {
   goto out;
  }
  offset++;
  items++;
 }

out:
 if (error == EMSGSIZE) {
  error = 0;

 }
 uio_setoffset(uio, offset);
 if (ap->a_numdirent) {
  *ap->a_numdirent = items;
 }
 return error;
}
