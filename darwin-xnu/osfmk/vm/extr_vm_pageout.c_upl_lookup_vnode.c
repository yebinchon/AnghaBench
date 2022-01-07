
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* upl_t ;
struct vnode {int dummy; } ;
struct TYPE_5__ {TYPE_1__* map_object; } ;
struct TYPE_4__ {int pager; int internal; } ;


 struct vnode* vnode_pager_lookup_vnode (int ) ;

struct vnode * upl_lookup_vnode(upl_t upl)
{
 if (!upl->map_object->internal)
  return vnode_pager_lookup_vnode(upl->map_object->pager);
 else
  return ((void*)0);
}
