
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* vnode_t ;
typedef int vfs_context_t ;
struct nameidata {TYPE_1__* ni_vp; } ;
struct TYPE_5__ {scalar_t__ v_type; } ;


 int ENOTDIR ;
 int KAUTH_VNODE_SEARCH ;
 scalar_t__ VDIR ;
 int mac_vnode_check_chdir (int ,TYPE_1__*) ;
 int namei (struct nameidata*) ;
 int nameidone (struct nameidata*) ;
 int vnode_authorize (TYPE_1__*,int *,int ,int ) ;
 int vnode_put (TYPE_1__*) ;

__attribute__((used)) static int
change_dir(struct nameidata *ndp, vfs_context_t ctx)
{
 vnode_t vp;
 int error;

 if ((error = namei(ndp)))
  return (error);
 nameidone(ndp);
 vp = ndp->ni_vp;

 if (vp->v_type != VDIR) {
  vnode_put(vp);
  return (ENOTDIR);
 }
 error = vnode_authorize(vp, ((void*)0), KAUTH_VNODE_SEARCH, ctx);
 if (error) {
  vnode_put(vp);
  return (error);
 }

 return (error);
}
