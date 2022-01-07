
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_7__ ;
typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;
typedef struct TYPE_23__ TYPE_12__ ;
typedef struct TYPE_22__ TYPE_11__ ;


struct TYPE_25__ {int numpoints; scalar_t__** points; } ;
typedef TYPE_2__ winding_t ;
struct TYPE_26__ {int photons; int type; scalar_t__* color; scalar_t__* origin; } ;
typedef TYPE_3__ vsound_t ;
typedef scalar_t__* vec3_t ;
struct TYPE_27__ {int value; float lightSubdivide; int twoSided; scalar_t__* color; scalar_t__ autosprite; } ;
typedef TYPE_4__ shaderInfo_t ;
struct TYPE_24__ {scalar_t__* normal; } ;
struct TYPE_28__ {int numpoints; TYPE_1__ plane; scalar_t__** points; } ;
typedef TYPE_5__ lFacet_t ;
struct TYPE_29__ {size_t shaderNum; size_t firstVert; int numVerts; scalar_t__** lightmapVecs; } ;
typedef TYPE_6__ dsurface_t ;
struct TYPE_30__ {scalar_t__* xyz; } ;
typedef TYPE_7__ drawVert_t ;
struct TYPE_23__ {int shader; } ;
struct TYPE_22__ {int numFacets; TYPE_5__* facets; } ;


 TYPE_2__* AllocWinding (int) ;
 int FreeWinding (TYPE_2__*) ;
 int LIGHT_POINTRADIAL ;
 TYPE_2__* ReverseWinding (TYPE_2__*) ;
 TYPE_4__* ShaderInfoForShader (int ) ;
 int VS_SubdivideAreaLight (TYPE_4__*,TYPE_2__*,scalar_t__*,float,int ) ;
 int VectorAdd (scalar_t__*,scalar_t__*,scalar_t__*) ;
 int VectorCopy (scalar_t__*,scalar_t__*) ;
 int VectorScale (scalar_t__*,double,scalar_t__*) ;
 int VectorSubtract (int ,scalar_t__*,scalar_t__*) ;
 int _printf (char*,...) ;
 TYPE_6__* drawSurfaces ;
 TYPE_7__* drawVerts ;
 TYPE_12__* dshaders ;
 float lightDefaultSubdivide ;
 int lightPointScale ;
 TYPE_11__** lsurfaceTest ;
 TYPE_3__* malloc (int) ;
 int memcpy (scalar_t__**,scalar_t__**,int) ;
 int memset (TYPE_3__*,int ,int) ;
 int numDrawSurfaces ;
 int numvsounds ;
 int qtrue ;
 int vec3_origin ;
 TYPE_3__** vsounds ;

void VS_CreateFakeSurfaceLights( void ) {
 int i, j, side;
 dsurface_t *ds;
 shaderInfo_t *ls;
 winding_t *w;
 lFacet_t *f;
 vsound_t *dl;
 vec3_t origin;
 drawVert_t *dv;
 int c_surfaceLights;
 float lightSubdivide;
 vec3_t normal;


 c_surfaceLights = 0;
 _printf ("Creating surface lights...\n");

 for ( i = 0 ; i < numDrawSurfaces ; i++ ) {

  ds = &drawSurfaces[i];

  ls = ShaderInfoForShader( dshaders[ ds->shaderNum].shader );
  if ( ls->value == 0 ) {
   continue;
  }


  if ( ls->lightSubdivide ) {
   lightSubdivide = ls->lightSubdivide;
  } else {
   lightSubdivide = lightDefaultSubdivide;
  }

  c_surfaceLights++;



  if ( ls->autosprite ) {

   if ( lsurfaceTest[i] ) {

    f = lsurfaceTest[i]->facets;
    if ( lsurfaceTest[i]->numFacets != 1 || f->numpoints != 4 ) {
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

   dl = malloc(sizeof(*dl));
   memset (dl, 0, sizeof(*dl));
   VectorCopy( origin, dl->origin );
   VectorCopy( ls->color, dl->color );
   dl->photons = ls->value * lightPointScale;
   dl->type = LIGHT_POINTRADIAL;
   vsounds[numvsounds++] = dl;
   continue;
  }


  for ( side = 0 ; side <= ls->twoSided ; side++ ) {

   if ( lsurfaceTest[i] ) {

    for ( j = 0 ; j < lsurfaceTest[i]->numFacets ; j++ ) {
     f = lsurfaceTest[i]->facets + j;
     w = AllocWinding( f->numpoints );
     w->numpoints = f->numpoints;
     memcpy( w->points, f->points, f->numpoints * 12 );

     VectorCopy( f->plane.normal, normal );
     if ( side ) {
      winding_t *t;

      t = w;
      w = ReverseWinding( t );
      FreeWinding( t );
      VectorSubtract( vec3_origin, normal, normal );
     }
     VS_SubdivideAreaLight( ls, w, normal, lightSubdivide, qtrue );
    }
   } else {


    w = AllocWinding( ds->numVerts );
    w->numpoints = ds->numVerts;
    for ( j = 0 ; j < ds->numVerts ; j++ ) {
     VectorCopy( drawVerts[ds->firstVert+j].xyz, w->points[j] );
    }
    VectorCopy( ds->lightmapVecs[2], normal );
    if ( side ) {
     winding_t *t;

     t = w;
     w = ReverseWinding( t );
     FreeWinding( t );
     VectorSubtract( vec3_origin, normal, normal );
    }
    VS_SubdivideAreaLight( ls, w, normal, lightSubdivide, qtrue );
   }
  }
 }

 _printf( "%7i light emitting surfaces\n", c_surfaceLights );
}
