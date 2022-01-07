
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
struct nameidata {int ni_flag; } ;


 int NAMEI_COMPOUNDOPEN ;
 int vnode_compound_open_available (int ) ;

int
namei_compound_available(vnode_t dp, struct nameidata *ndp)
{
 if ((ndp->ni_flag & NAMEI_COMPOUNDOPEN) != 0) {
  return vnode_compound_open_available(dp);
 }

 return 0;
}
