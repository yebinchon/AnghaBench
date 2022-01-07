
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vnode {int dummy; } ;
struct mount {int dummy; } ;
struct componentname {int dummy; } ;


 int ENOENT ;
 int VTONULL (struct vnode*) ;
 int null_getnewvnode (struct mount*,struct vnode*,struct vnode*,struct vnode**,struct componentname*,int) ;
 int null_hashget (struct mount*,struct vnode*,struct vnode**) ;
 int null_hashins (struct mount*,int ,struct vnode**) ;
 int vnode_put (struct vnode*) ;
 int vnode_recycle (struct vnode*) ;
 int vnode_ref (struct vnode*) ;
 int vnode_rele (struct vnode*) ;

int
null_nodeget(
    struct mount * mp, struct vnode * lowervp, struct vnode * dvp, struct vnode ** vpp, struct componentname * cnp, int root)
{
 struct vnode * vp;
 int error;


 error = null_hashget(mp, lowervp, vpp);


 if (error != ENOENT) {




  return error;
 }





 error = vnode_ref(lowervp);
 if(error)
 {

  return error;
 }

 error = null_getnewvnode(mp, lowervp, dvp, &vp, cnp, root);

 if (error) {
  vnode_rele(lowervp);
  return (error);
 }





 error = null_hashins(mp, VTONULL(vp), vpp);
 if (error || *vpp != ((void*)0)) {

  vnode_recycle(vp);
  vnode_put(vp);

  return error;
 }


 *vpp = vp;

 return (0);
}
