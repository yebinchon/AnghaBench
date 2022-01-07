
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_11__ ;


struct TYPE_22__ {int numpoints; scalar_t__** p; } ;
typedef TYPE_1__ winding_t ;
typedef scalar_t__* vec3_t ;
struct TYPE_23__ {int value; float lightSubdivide; int twoSided; scalar_t__* color; scalar_t__ autosprite; } ;
typedef TYPE_2__ shaderInfo_t ;
struct TYPE_24__ {int photons; int type; scalar_t__* color; scalar_t__* origin; struct TYPE_24__* next; } ;
typedef TYPE_3__ light_t ;
struct TYPE_25__ {size_t shaderNum; size_t firstVert; int numVerts; scalar_t__** lightmapVecs; } ;
typedef TYPE_4__ dsurface_t ;
struct TYPE_26__ {scalar_t__* xyz; } ;
typedef TYPE_5__ drawVert_t ;
struct TYPE_27__ {int numBoundaries; scalar_t__* surface; scalar_t__** points; } ;
typedef TYPE_6__ cFacet_t ;
struct TYPE_28__ {int numFacets; TYPE_6__* facets; } ;
struct TYPE_21__ {int shader; } ;


 TYPE_1__* AllocWinding (int) ;
 int FreeWinding (TYPE_1__*) ;
 TYPE_1__* ReverseWinding (TYPE_1__*) ;
 TYPE_2__* ShaderInfoForShader (int ) ;
 int SubdivideAreaLight (TYPE_2__*,TYPE_1__*,scalar_t__*,float,int ) ;
 int VectorAdd (scalar_t__*,scalar_t__*,scalar_t__*) ;
 int VectorCopy (scalar_t__*,scalar_t__*) ;
 int VectorScale (scalar_t__*,double,scalar_t__*) ;
 int VectorSubtract (int ,scalar_t__*,scalar_t__*) ;
 int _printf (char*,int,...) ;
 float defaultLightSubdivide ;
 TYPE_4__* drawSurfaces ;
 TYPE_5__* drawVerts ;
 TYPE_11__* dshaders ;
 int emit_point ;
 TYPE_3__* lights ;
 TYPE_3__* malloc (int) ;
 int memcpy (scalar_t__**,scalar_t__**,int) ;
 int memset (TYPE_3__*,int ,int) ;
 int numDrawSurfaces ;
 int numPointLights ;
 int pointScale ;
 int qprintf (char*) ;
 int qtrue ;
 TYPE_7__** surfaceTest ;
 int vec3_origin ;

void CreateSurfaceLights( void ) {
 int i, j, side;
 dsurface_t *ds;
 shaderInfo_t *ls;
 winding_t *w;
 cFacet_t *f;
 light_t *dl;
 vec3_t origin;
 drawVert_t *dv;
 int c_lightSurfaces;
 float lightSubdivide;
 vec3_t normal;

 qprintf ("--- CreateSurfaceLights ---\n");
 c_lightSurfaces = 0;

 for ( i = 0 ; i < numDrawSurfaces ; i++ ) {

  ds = &drawSurfaces[i];

  ls = ShaderInfoForShader( dshaders[ ds->shaderNum].shader );
  if ( ls->value == 0 ) {
   continue;
  }


  if ( ls->lightSubdivide ) {
   lightSubdivide = ls->lightSubdivide;
  } else {
   lightSubdivide = defaultLightSubdivide;
  }

  c_lightSurfaces++;



  if ( ls->autosprite ) {

   if ( surfaceTest[i] ) {

    f = surfaceTest[i]->facets;
    if ( surfaceTest[i]->numFacets != 1 || f->numBoundaries != 4 ) {
     _printf( "WARNING: surface at (%i %i %i) has autosprite shader but isn't a quad\n",
      (int)f->points[0], (int)f->points[1], (int)f->points[2] );
    }
    VectorAdd( f->points[0], f->points[1], origin );
    VectorAdd( f->points[2], origin, origin );
    VectorAdd( f->points[3], origin, origin );
    VectorScale( origin, 0.25, origin );
   } else {

    dv = &drawVerts[ ds->firstVert ];
    if ( ds->numVerts != 4 ) {
     _printf( "WARNING: surface at (%i %i %i) has autosprite shader but %i verts\n",
      (int)dv->xyz[0], (int)dv->xyz[1], (int)dv->xyz[2] );
     continue;
    }

    VectorAdd( dv[0].xyz, dv[1].xyz, origin );
    VectorAdd( dv[2].xyz, origin, origin );
    VectorAdd( dv[3].xyz, origin, origin );
    VectorScale( origin, 0.25, origin );
   }


   numPointLights++;
   dl = malloc(sizeof(*dl));
   memset (dl, 0, sizeof(*dl));
   dl->next = lights;
   lights = dl;

   VectorCopy( origin, dl->origin );
   VectorCopy( ls->color, dl->color );
   dl->photons = ls->value * pointScale;
   dl->type = emit_point;
   continue;
  }


  for ( side = 0 ; side <= ls->twoSided ; side++ ) {

   if ( surfaceTest[i] ) {

    for ( j = 0 ; j < surfaceTest[i]->numFacets ; j++ ) {
     f = surfaceTest[i]->facets + j;
     w = AllocWinding( f->numBoundaries );
     w->numpoints = f->numBoundaries;
     memcpy( w->p, f->points, f->numBoundaries * 12 );

     VectorCopy( f->surface, normal );
     if ( side ) {
      winding_t *t;

      t = w;
      w = ReverseWinding( t );
      FreeWinding( t );
      VectorSubtract( vec3_origin, normal, normal );
     }
     SubdivideAreaLight( ls, w, normal, lightSubdivide, qtrue );
    }
   } else {


    w = AllocWinding( ds->numVerts );
    w->numpoints = ds->numVerts;
    for ( j = 0 ; j < ds->numVerts ; j++ ) {
     VectorCopy( drawVerts[ds->firstVert+j].xyz, w->p[j] );
    }
    VectorCopy( ds->lightmapVecs[2], normal );
    if ( side ) {
     winding_t *t;

     t = w;
     w = ReverseWinding( t );
     FreeWinding( t );
     VectorSubtract( vec3_origin, normal, normal );
    }
    SubdivideAreaLight( ls, w, normal, lightSubdivide, qtrue );
   }
  }
 }

 _printf( "%5i light emitting surfaces\n", c_lightSurfaces );
}
