
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct vnode {int dummy; } ;


 int resolve_nspace_item_ext (struct vnode*,int ,int *) ;

int
resolve_nspace_item(struct vnode *vp, uint64_t op)
{
 return resolve_nspace_item_ext(vp, op, ((void*)0));
}
