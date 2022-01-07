
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int numpoints; int * p; } ;
typedef TYPE_1__ winding_t ;
typedef float* vec3_t ;
struct TYPE_11__ {int fogNum; int side; int mapBrush; } ;
typedef TYPE_2__ mapDrawSurface_t ;


 int AddPointToBounds (int ,float*,float*) ;
 int ClearBounds (float*,float*) ;
 int ClipWindingEpsilon (TYPE_1__*,float*,float,float const,TYPE_1__**,TYPE_1__**) ;
 float DotProduct (float*,float*) ;
 TYPE_2__* DrawSurfaceForSide (int ,int ,TYPE_1__*) ;
 int Error (char*) ;
 float ceil (float) ;
 float floor (float) ;

void SubdivideDrawSurf( mapDrawSurface_t *ds, winding_t *w, float subdivisions ) {
 int i;
 int axis;
 vec3_t bounds[2];
 const float epsilon = 0.1;
 int subFloor, subCeil;
 winding_t *frontWinding, *backWinding;
 mapDrawSurface_t *newds;

 if ( !w ) {
  return;
 }
 if ( w->numpoints < 3 ) {
  Error( "SubdivideDrawSurf: Bad w->numpoints" );
 }

 ClearBounds( bounds[0], bounds[1] );
 for ( i = 0 ; i < w->numpoints ; i++ ) {
  AddPointToBounds( w->p[i], bounds[0], bounds[1] );
 }

 for ( axis = 0 ; axis < 3 ; axis++ ) {
  vec3_t planePoint = { 0, 0, 0 };
  vec3_t planeNormal = { 0, 0, 0 };
  float d;

  subFloor = floor( bounds[0][axis] / subdivisions ) * subdivisions;
  subCeil = ceil( bounds[1][axis] / subdivisions ) * subdivisions;

  planePoint[axis] = subFloor + subdivisions;
  planeNormal[axis] = -1;

  d = DotProduct( planePoint, planeNormal );


  if ( subCeil - subFloor > subdivisions ) {

   ClipWindingEpsilon( w, planeNormal, d, epsilon, &frontWinding, &backWinding );


   if ( !frontWinding ) {
    w = backWinding;
   } else if ( !backWinding ) {
    w = frontWinding;
   } else {
    SubdivideDrawSurf( ds, frontWinding, subdivisions );
    SubdivideDrawSurf( ds, backWinding, subdivisions );

    return;
   }
  }
 }


 newds = DrawSurfaceForSide( ds->mapBrush, ds->side, w );
 newds->fogNum = ds->fogNum;
}
