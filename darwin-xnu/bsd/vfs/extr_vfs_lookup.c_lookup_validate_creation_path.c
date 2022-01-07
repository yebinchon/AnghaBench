
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct componentname {int cn_flags; } ;
struct nameidata {int ni_flag; struct componentname ni_cnd; } ;


 int ENOENT ;
 int EROFS ;
 int ISLASTCN ;
 int NAMEI_TRAILINGSLASH ;
 int RDONLY ;
 int WILLBEDIR ;

int
lookup_validate_creation_path(struct nameidata *ndp)
{
 struct componentname *cnp = &ndp->ni_cnd;





 if (cnp->cn_flags & RDONLY) {
  return EROFS;
 }
 if ((cnp->cn_flags & ISLASTCN) && (ndp->ni_flag & NAMEI_TRAILINGSLASH) && !(cnp->cn_flags & WILLBEDIR)) {
  return ENOENT;
 }

 return 0;
}
