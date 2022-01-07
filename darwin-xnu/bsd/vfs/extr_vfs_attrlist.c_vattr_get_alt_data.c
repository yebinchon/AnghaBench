
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vnode_t ;
typedef int vfs_context_t ;
struct vnode_attr {int va_fileid; int va_parentid; } ;
struct attrlist {int commonattr; int fileattr; int dirattr; } ;


 int ATTR_CMN_FILEID ;
 int ATTR_CMN_NAME ;
 int ATTR_CMN_OBJID ;
 int ATTR_CMN_OBJPERMANENTID ;
 int ATTR_CMN_PARENTID ;
 int ATTR_CMN_PAROBJID ;
 int ATTR_CMN_SCRIPT ;
 int ATTR_DIR_LINKCOUNT ;
 int ATTR_FILE_DATAALLOCSIZE ;
 int ATTR_FILE_DATALENGTH ;
 scalar_t__ NULLVP ;
 int VATTR_CLEAR_ACTIVE (struct vnode_attr*,int ) ;
 int VATTR_INIT (struct vnode_attr*) ;
 scalar_t__ VATTR_IS_SUPPORTED (struct vnode_attr*,int ) ;
 int VATTR_RETURN (struct vnode_attr*,int ,int) ;
 int VATTR_SET_SUPPORTED (struct vnode_attr*,int ) ;
 int VATTR_WANTED (struct vnode_attr*,int ) ;
 int va_data_alloc ;
 int va_data_size ;
 int va_dirlinkcount ;
 int va_encoding ;
 int va_fileid ;
 int va_linkid ;
 int va_name ;
 int va_parentid ;
 scalar_t__ vnode_getattr (scalar_t__,struct vnode_attr*,int ) ;
 scalar_t__ vnode_getparent (scalar_t__) ;
 int vnode_put (scalar_t__) ;

__attribute__((used)) static void
vattr_get_alt_data(vnode_t vp, struct attrlist *alp, struct vnode_attr *vap,
    int return_valid, int is_bulk, vfs_context_t ctx)
{




 if ((alp->commonattr &
     (ATTR_CMN_OBJID | ATTR_CMN_OBJPERMANENTID | ATTR_CMN_FILEID)) &&
     !VATTR_IS_SUPPORTED(vap, va_linkid)) {

  VATTR_CLEAR_ACTIVE(vap, va_linkid);
 }





 if ((alp->commonattr & (ATTR_CMN_PAROBJID | ATTR_CMN_PARENTID)) &&
     !VATTR_IS_SUPPORTED(vap, va_parentid) && vp && !is_bulk) {
  vnode_t dvp;

  if ((dvp = vnode_getparent(vp)) != NULLVP) {
   struct vnode_attr lva;

   VATTR_INIT(&lva);
   VATTR_WANTED(&lva, va_fileid);
   if (vnode_getattr(dvp, &lva, ctx) == 0 &&
       VATTR_IS_SUPPORTED(vap, va_fileid)) {
    vap->va_parentid = lva.va_fileid;
    VATTR_SET_SUPPORTED(vap, va_parentid);
   }
   vnode_put(dvp);
  }
 }



 if ((alp->fileattr & ATTR_FILE_DATALENGTH) &&
     !VATTR_IS_SUPPORTED(vap, va_data_size)) {
  VATTR_CLEAR_ACTIVE(vap, va_data_size);
 }

 if ((alp->fileattr & ATTR_FILE_DATAALLOCSIZE) &&
     !VATTR_IS_SUPPORTED(vap, va_data_alloc)) {
  VATTR_CLEAR_ACTIVE(vap, va_data_alloc);
 }




 if ((alp->commonattr & ATTR_CMN_SCRIPT) &&
     !VATTR_IS_SUPPORTED(vap, va_encoding) && !return_valid) {
  VATTR_RETURN(vap, va_encoding,
      0x7e );
 }





 if ((alp->commonattr & ATTR_CMN_NAME) &&
     !VATTR_IS_SUPPORTED(vap, va_name)) {
  VATTR_CLEAR_ACTIVE(vap, va_name);
 }


 if ((alp->dirattr & ATTR_DIR_LINKCOUNT) &&
     !VATTR_IS_SUPPORTED(vap, va_dirlinkcount)) {
  VATTR_RETURN(vap, va_dirlinkcount, 1);
 }
}
