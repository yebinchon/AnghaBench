
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int winding_t ;
typedef int tree_t ;
struct TYPE_12__ {float subdivisions; scalar_t__ autosprite; } ;
typedef TYPE_3__ shaderInfo_t ;
struct TYPE_13__ {scalar_t__ numVerts; TYPE_2__* shaderInfo; TYPE_1__* side; } ;
typedef TYPE_4__ mapDrawSurface_t ;
struct TYPE_14__ {int firstDrawSurf; } ;
typedef TYPE_5__ entity_t ;
struct TYPE_11__ {scalar_t__ autosprite; } ;
struct TYPE_10__ {TYPE_3__* shaderInfo; } ;


 int SubdivideDrawSurf (TYPE_4__*,int *,float) ;
 int * WindingFromDrawSurf (TYPE_4__*) ;
 TYPE_4__* mapDrawSurfs ;
 int numMapDrawSurfs ;
 int qprintf (char*) ;

void SubdivideDrawSurfs( entity_t *e, tree_t *tree ) {
 int i;
 mapDrawSurface_t *ds;
 int numBaseDrawSurfs;
 winding_t *w;
 float subdivision;
 shaderInfo_t *si;

 qprintf( "----- SubdivideDrawSurfs -----\n");
 numBaseDrawSurfs = numMapDrawSurfs;
 for ( i = e->firstDrawSurf ; i < numBaseDrawSurfs ; i++ ) {
  ds = &mapDrawSurfs[i];


  if ( !ds->side ) {
   continue;
  }


  si = ds->side->shaderInfo;
  if ( !si ) {
   continue;
  }

  if (ds->shaderInfo->autosprite || si->autosprite) {
   continue;
  }

  subdivision = si->subdivisions;
  if ( !subdivision ) {
   continue;
  }

  w = WindingFromDrawSurf( ds );
  ds->numVerts = 0;
  SubdivideDrawSurf( ds, w, subdivision );
 }

}
