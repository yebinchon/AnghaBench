
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int numpoints; int * p; } ;
typedef TYPE_2__ winding_t ;
struct TYPE_9__ {int numVerts; TYPE_1__* verts; } ;
typedef TYPE_3__ mapDrawSurface_t ;
struct TYPE_7__ {int xyz; } ;


 TYPE_2__* AllocWinding (int) ;
 int VectorCopy (int ,int ) ;

winding_t *WindingFromDrawSurf( mapDrawSurface_t *ds ) {
 winding_t *w;
 int i;

 w = AllocWinding( ds->numVerts );
 w->numpoints = ds->numVerts;
 for ( i = 0 ; i < ds->numVerts ; i++ ) {
  VectorCopy( ds->verts[i].xyz, w->p[i] );
 }
 return w;
}
