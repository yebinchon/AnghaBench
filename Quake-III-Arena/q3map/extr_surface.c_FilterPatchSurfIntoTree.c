
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_16__ {int numpoints; int * p; } ;
typedef TYPE_2__ winding_t ;
struct TYPE_17__ {int headnode; } ;
typedef TYPE_3__ tree_t ;
struct TYPE_18__ {int width; int height; TYPE_1__* verts; } ;
typedef TYPE_4__ mesh_t ;
struct TYPE_19__ {int patchWidth; int patchHeight; TYPE_1__* verts; } ;
typedef TYPE_5__ mapDrawSurface_t ;
struct TYPE_15__ {int xyz; } ;


 TYPE_2__* AllocWinding (int) ;
 scalar_t__ FilterMapDrawSurfIntoTree (int ,TYPE_5__*,int ) ;
 scalar_t__ FilterMapDrawSurfIntoTree_r (TYPE_2__*,TYPE_5__*,int ) ;
 int SUBDIVISION_LIMIT ;
 TYPE_4__* SubdivideMesh (TYPE_4__,int ,int) ;
 int VectorCopy (int ,int ) ;
 int free (TYPE_4__*) ;

int FilterPatchSurfIntoTree( mapDrawSurface_t *ds, tree_t *tree ) {
 int i, j;
 int l;
 mesh_t baseMesh, *subdividedMesh;
 winding_t *w;

 baseMesh.width = ds->patchWidth;
 baseMesh.height = ds->patchHeight;
 baseMesh.verts = ds->verts;
 subdividedMesh = SubdivideMesh( baseMesh, SUBDIVISION_LIMIT, 32 );

 l = 0;
 for (i = 0; i < subdividedMesh->width-1; i++) {
  for (j = 0; j < subdividedMesh->height-1; j++) {
   w = AllocWinding(3);
   VectorCopy(subdividedMesh->verts[j * subdividedMesh->width + i].xyz, w->p[0]);
   VectorCopy(subdividedMesh->verts[j * subdividedMesh->width + i + 1].xyz, w->p[1]);
   VectorCopy(subdividedMesh->verts[(j+1) * subdividedMesh->width + i].xyz, w->p[2]);
   w->numpoints = 3;
   l += FilterMapDrawSurfIntoTree_r( w, ds, tree->headnode );
   w = AllocWinding(3);
   VectorCopy(subdividedMesh->verts[j * subdividedMesh->width + i + 1].xyz, w->p[0]);
   VectorCopy(subdividedMesh->verts[(j+1) * subdividedMesh->width + i + 1].xyz, w->p[1]);
   VectorCopy(subdividedMesh->verts[(j+1) * subdividedMesh->width + i].xyz, w->p[2]);
   w->numpoints = 3;
   l += FilterMapDrawSurfIntoTree_r( w, ds, tree->headnode );
  }
 }


 for ( i = 0 ; i < subdividedMesh->width * subdividedMesh->height ; i++ ) {
  l += FilterMapDrawSurfIntoTree( subdividedMesh->verts[i].xyz, ds, tree->headnode );
 }

 free(subdividedMesh);

 return l;
}
