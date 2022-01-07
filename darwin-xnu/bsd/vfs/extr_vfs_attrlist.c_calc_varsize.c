
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_4__* vnode_t ;
struct vnode_attr {char* va_name; TYPE_3__* va_acl; } ;
struct attrlist {int commonattr; int forkattr; } ;
typedef int ssize_t ;
typedef int errno_t ;
struct TYPE_12__ {TYPE_2__* v_mount; } ;
struct TYPE_11__ {scalar_t__ acl_entrycount; } ;
struct TYPE_9__ {int* f_mntonname; } ;
struct TYPE_10__ {TYPE_1__ mnt_vfsstat; } ;


 int ATTR_CMNEXT_RELPATH ;
 int ATTR_CMN_EXTENDED_SECURITY ;
 int ATTR_CMN_FULLPATH ;
 int ATTR_CMN_NAME ;
 int BUILDPATH_VOLUME_RELATIVE ;
 scalar_t__ KAUTH_FILESEC_NOACL ;
 int KAUTH_FILESEC_SIZE (scalar_t__) ;
 int MAXPATHLEN ;
 scalar_t__ VATTR_IS_SUPPORTED (struct vnode_attr*,int ) ;
 int build_path (TYPE_4__*,char*,int,int*,int ,int ) ;
 int getattrlist_findnamecomp (char*,char const**,int*) ;
 int roundup (int,int) ;
 int strlen (char const*) ;
 int va_acl ;
 int va_name ;
 int vfs_context_current () ;
 char* vnode_getname (TYPE_4__*) ;
 scalar_t__ vnode_isvroot (TYPE_4__*) ;

__attribute__((used)) static errno_t
calc_varsize(vnode_t vp, struct attrlist *alp, struct vnode_attr *vap,
   ssize_t *varsizep, char *fullpathptr, ssize_t *fullpathlenp,
   char *relpathptr, ssize_t *relpathlenp, const char **vnamep,
   const char **cnpp, ssize_t *cnlp)
{
 int error = 0;

 *varsizep = 0;

 if (alp->commonattr & ATTR_CMN_NAME) {
  if (VATTR_IS_SUPPORTED(vap, va_name)) {
   vap->va_name[MAXPATHLEN-1] = '\0';
   *cnpp = vap->va_name;
   *cnlp = strlen(*cnpp);
  } else if (vp) {

   if (vnode_isvroot(vp)) {
    if (vp->v_mount->mnt_vfsstat.f_mntonname[1] == 0x00 &&
      vp->v_mount->mnt_vfsstat.f_mntonname[0] == '/') {






     *cnpp = *vnamep = vnode_getname(vp);
     if (*cnpp == ((void*)0)) {

      *cnpp = &vp->v_mount->mnt_vfsstat.f_mntonname[0];
     }
     *cnlp = strlen(*cnpp);
    }
    else {
     getattrlist_findnamecomp(vp->v_mount->mnt_vfsstat.f_mntonname, cnpp, cnlp);
    }
   }
   else {
    *cnpp = *vnamep = vnode_getname(vp);
    *cnlp = 0;
    if (*cnpp != ((void*)0)) {
     *cnlp = strlen(*cnpp);
    }
   }
  } else {
   *cnlp = 0;
  }
  *varsizep += roundup(*cnlp + 1, 4);
 }





 if (vp && (alp->commonattr & ATTR_CMN_FULLPATH)) {
  int len = MAXPATHLEN;
  int err;


  err = build_path(vp, fullpathptr, len, &len, 0, vfs_context_current());
  if (err) {
   error = err;
   goto out;
  }
  *fullpathlenp = 0;
  if (fullpathptr){
   *fullpathlenp = strlen(fullpathptr);
  }
  *varsizep += roundup(((*fullpathlenp) + 1), 4);
 }




 if (vp && (alp->forkattr & ATTR_CMNEXT_RELPATH)) {
  int len;
  int err;


  err = build_path(vp, relpathptr, MAXPATHLEN, &len, BUILDPATH_VOLUME_RELATIVE, vfs_context_current());
  if (err) {
   error = err;
   goto out;
  }


  *relpathlenp = len - 1;
  *varsizep += roundup(len, 4);
 }







 if ((alp->commonattr & ATTR_CMN_EXTENDED_SECURITY) &&
   VATTR_IS_SUPPORTED(vap, va_acl) &&
   (vap->va_acl != ((void*)0))) {





  if (vap->va_acl->acl_entrycount == KAUTH_FILESEC_NOACL) {
   *varsizep += roundup((KAUTH_FILESEC_SIZE(0)), 4);
  }
  else {
   *varsizep += roundup ((KAUTH_FILESEC_SIZE(vap->va_acl->acl_entrycount)), 4);
  }
 }

out:
 return (error);
}
