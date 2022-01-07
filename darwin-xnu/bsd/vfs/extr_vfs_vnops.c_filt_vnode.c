
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct vnode* vnode_t ;
struct vnode {int dummy; } ;
struct knote {scalar_t__ kn_hook; } ;


 int filt_vnode_common (struct knote*,struct vnode*,long) ;

__attribute__((used)) static int
filt_vnode(struct knote *kn, long hint)
{
 vnode_t vp = (struct vnode *)kn->kn_hook;

 return filt_vnode_common(kn, vp, hint);
}
