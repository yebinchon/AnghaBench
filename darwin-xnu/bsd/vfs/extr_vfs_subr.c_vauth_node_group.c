
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode_attr {int va_gid; } ;
typedef int kauth_cred_t ;


 int ENOENT ;
 scalar_t__ VATTR_IS_SUPPORTED (struct vnode_attr*,int ) ;
 int kauth_cred_ismember_gid (int ,int ,int*) ;
 int va_gid ;

__attribute__((used)) static int
vauth_node_group(struct vnode_attr *vap, kauth_cred_t cred, int *ismember, int idontknow)
{
 int error;
 int result;

 error = 0;
 result = 0;







 if (vap && VATTR_IS_SUPPORTED(vap, va_gid)) {
  error = kauth_cred_ismember_gid(cred, vap->va_gid, &result);
  if (error == ENOENT)
   error = idontknow;
 }
 if (!error)
  *ismember = result;
 return(error);
}
