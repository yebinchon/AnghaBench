
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* onnode; int winding; } ;
typedef TYPE_2__ portal_t ;
struct TYPE_9__ {int planenum; int w; } ;
typedef TYPE_3__ bspface_t ;
struct TYPE_7__ {int planenum; } ;


 TYPE_3__* AllocBspFace () ;
 int CopyWinding (int ) ;

bspface_t *BspFaceForPortal( portal_t *p ) {
 bspface_t *f;

 f = AllocBspFace();
 f->w = CopyWinding( p->winding );
 f->planenum = p->onnode->planenum & ~1;

 return f;
}
