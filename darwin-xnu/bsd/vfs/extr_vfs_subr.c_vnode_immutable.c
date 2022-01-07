
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode_attr {int va_flags; } ;


 int APPEND ;
 int EPERM ;
 int IMMUTABLE ;
 int KAUTH_DEBUG (char*,int,int,int,int) ;
 int UF_APPEND ;
 int UF_IMMUTABLE ;
 scalar_t__ securelevel ;

__attribute__((used)) static int
vnode_immutable(struct vnode_attr *vap, int append, int ignore)
{
 int mask;


 mask = IMMUTABLE | APPEND;


 if (append)
  mask &= ~APPEND;


 if (ignore) {
  if (securelevel <= 0) {

   mask = 0;
  } else {

   mask &= ~(UF_IMMUTABLE | UF_APPEND);
  }
 }
 KAUTH_DEBUG("IMMUTABLE - file flags 0x%x mask 0x%x append = %d ignore = %d", vap->va_flags, mask, append, ignore);
 if ((vap->va_flags & mask) != 0)
  return(EPERM);
 return(0);
}
