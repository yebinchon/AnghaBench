
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode_attr {scalar_t__ va_uid; } ;
typedef int kauth_cred_t ;


 scalar_t__ VATTR_IS_SUPPORTED (struct vnode_attr*,int ) ;
 scalar_t__ kauth_cred_getuid (int ) ;
 int va_uid ;

__attribute__((used)) static int
vauth_node_owner(struct vnode_attr *vap, kauth_cred_t cred)
{
 int result;


 result = 0;




 if (vap && VATTR_IS_SUPPORTED(vap, va_uid)) {
  result = (vap->va_uid == kauth_cred_getuid(cred)) ? 1 : 0;
 }


 return(result);
}
