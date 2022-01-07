
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int numpoints; int * p; } ;
typedef TYPE_2__ winding_t ;
struct TYPE_13__ {int headnode; } ;
typedef TYPE_3__ tree_t ;
struct TYPE_14__ {int numIndexes; size_t* indexes; int numVerts; TYPE_1__* verts; } ;
typedef TYPE_4__ mapDrawSurface_t ;
struct TYPE_11__ {int xyz; } ;


 TYPE_2__* AllocWinding (int) ;
 scalar_t__ FilterMapDrawSurfIntoTree (int ,TYPE_4__*,int ) ;
 scalar_t__ FilterMapDrawSurfIntoTree_r (TYPE_2__*,TYPE_4__*,int ) ;
 int VectorCopy (int ,int ) ;

int FilterMiscModelSurfIntoTree( mapDrawSurface_t *ds, tree_t *tree ) {
 int i;
 int l;
 winding_t *w;

 l = 0;
 for (i = 0; i < ds->numIndexes-2; i++) {
  w = AllocWinding(3);
  VectorCopy(ds->verts[ds->indexes[i]].xyz, w->p[0]);
  VectorCopy(ds->verts[ds->indexes[i+1]].xyz, w->p[1]);
  VectorCopy(ds->verts[ds->indexes[i+2]].xyz, w->p[2]);
  w->numpoints = 3;
  l += FilterMapDrawSurfIntoTree_r( w, ds, tree->headnode );
 }


 for ( i = 0 ; i < ds->numVerts ; i++ ) {
  l += FilterMapDrawSurfIntoTree( ds->verts[i].xyz, ds, tree->headnode );
 }

 return l;
}
