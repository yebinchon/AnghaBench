
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
struct nameidata {int ni_flag; } ;
struct componentname {int cn_flags; struct nameidata* cn_ndp; } ;
struct TYPE_5__ {scalar_t__ v_resolve; int * v_mountedhere; } ;


 int EKEEPLOOKING ;
 int FOLLOW ;
 int NAMEI_CONTLOOKUP ;
 int NAMEI_TRAILINGSLASH ;
 int panic (char*) ;
 scalar_t__ vnode_isdir (TYPE_1__*) ;
 scalar_t__ vnode_islnk (TYPE_1__*) ;

int
vnode_lookup_continue_needed(vnode_t vp, struct componentname *cnp)
{
 struct nameidata *ndp = cnp->cn_ndp;

 if (ndp == ((void*)0)) {
  panic("vnode_lookup_continue_needed(): cnp->cn_ndp is NULL\n");
 }

 if (vnode_isdir(vp)) {
  if (vp->v_mountedhere != ((void*)0)) {
   goto yes;
  }







 }


 if (vnode_islnk(vp)) {

  if (cnp->cn_flags & FOLLOW) {
   goto yes;
  }
  if (ndp->ni_flag & NAMEI_TRAILINGSLASH) {
   goto yes;
  }
 }

 return 0;

yes:
 ndp->ni_flag |= NAMEI_CONTLOOKUP;
 return EKEEPLOOKING;
}
