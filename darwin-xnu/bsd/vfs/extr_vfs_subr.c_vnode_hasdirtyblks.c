
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_3__* vnode_t ;
struct cl_writebehind {scalar_t__ cl_scmap; scalar_t__ cl_number; } ;
struct TYPE_6__ {scalar_t__ lh_first; } ;
struct TYPE_8__ {TYPE_2__* v_ubcinfo; TYPE_1__ v_dirtyblkhd; } ;
struct TYPE_7__ {struct cl_writebehind* cl_wbehind; } ;


 int UBCINFOEXISTS (TYPE_3__*) ;

int
vnode_hasdirtyblks(vnode_t vp)
{
        struct cl_writebehind *wbp;
        if (vp->v_dirtyblkhd.lh_first)
         return (1);

 if (!UBCINFOEXISTS(vp))
         return (0);

 wbp = vp->v_ubcinfo->cl_wbehind;

 if (wbp && (wbp->cl_number || wbp->cl_scmap))
         return (1);

 return (0);
}
