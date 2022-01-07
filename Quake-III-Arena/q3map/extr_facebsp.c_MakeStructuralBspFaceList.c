
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int winding_t ;
struct TYPE_7__ {int planenum; int surfaceFlags; int * winding; } ;
typedef TYPE_1__ side_t ;
struct TYPE_8__ {int planenum; int hint; struct TYPE_8__* next; int w; } ;
typedef TYPE_2__ bspface_t ;
struct TYPE_9__ {int numsides; TYPE_1__* sides; scalar_t__ detail; struct TYPE_9__* next; } ;
typedef TYPE_3__ bspbrush_t ;


 TYPE_2__* AllocBspFace () ;
 int CopyWinding (int *) ;
 int SURF_HINT ;
 int qtrue ;

bspface_t *MakeStructuralBspFaceList( bspbrush_t *list ) {
 bspbrush_t *b;
 int i;
 side_t *s;
 winding_t *w;
 bspface_t *f, *flist;

 flist = ((void*)0);
 for ( b = list ; b ; b = b->next ) {
  if ( b->detail ) {
   continue;
  }
  for ( i = 0 ; i < b->numsides ; i++ ) {
   s = &b->sides[i];
   w = s->winding;
   if ( !w ) {
    continue;
   }
   f = AllocBspFace();
   f->w = CopyWinding( w );
   f->planenum = s->planenum & ~1;
   f->next = flist;
   if (s->surfaceFlags & SURF_HINT) {

    f->hint = qtrue;
   }
   flist = f;
  }
 }

 return flist;
}
