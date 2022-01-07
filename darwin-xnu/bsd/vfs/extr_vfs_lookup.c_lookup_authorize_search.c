
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vnode_t ;
typedef int vfs_context_t ;
struct componentname {int dummy; } ;


 int KAUTH_VNODE_SEARCH ;
 int mac_vnode_check_lookup (int ,int ,struct componentname*) ;
 int vnode_authorize (int ,int *,int ,int ) ;

__attribute__((used)) static int
lookup_authorize_search(vnode_t dp, struct componentname *cnp, int dp_authorized_in_cache, vfs_context_t ctx)
{

#pragma unused(cnp)


 int error;

 if (!dp_authorized_in_cache) {
  error = vnode_authorize(dp, ((void*)0), KAUTH_VNODE_SEARCH, ctx);
  if (error)
   return error;
 }






 return 0;
}
