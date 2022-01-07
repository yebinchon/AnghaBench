
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* vnode_t ;
struct TYPE_4__ {scalar_t__ lh_first; } ;
struct TYPE_5__ {TYPE_1__ v_cleanblkhd; } ;



int
vnode_hascleanblks(vnode_t vp)
{







        if (vp->v_cleanblkhd.lh_first)
         return (1);
 return (0);
}
