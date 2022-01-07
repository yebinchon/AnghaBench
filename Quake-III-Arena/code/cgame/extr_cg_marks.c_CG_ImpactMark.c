
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int verts ;
typedef float* vec3_t ;
typedef int qhandle_t ;
typedef scalar_t__ qboolean ;
struct TYPE_12__ {double* st; scalar_t__ modulate; int xyz; } ;
typedef TYPE_2__ polyVert_t ;
struct TYPE_11__ {int numVerts; } ;
struct TYPE_13__ {float* color; int verts; TYPE_1__ poly; int markShader; scalar_t__ alphaFade; int time; } ;
typedef TYPE_3__ markPoly_t ;
struct TYPE_14__ {int numPoints; int firstPoint; } ;
typedef TYPE_4__ markFragment_t ;
typedef float byte ;
struct TYPE_16__ {int time; } ;
struct TYPE_15__ {int integer; } ;


 TYPE_3__* CG_AllocMark () ;
 int CG_Error (char*) ;
 int CrossProduct (float*,float*,float*) ;
 float DotProduct (float*,float*) ;
 int MAX_MARK_FRAGMENTS ;
 int MAX_MARK_POINTS ;
 int MAX_VERTS_ON_POLY ;
 int PerpendicularVector (float*,float*) ;
 int RotatePointAroundVector (float*,float*,float*,float) ;
 int VectorCopy (float*,int ) ;
 int VectorNormalize2 (float* const,float*) ;
 int VectorScale (float* const,int,float*) ;
 int VectorSubtract (int ,float* const,float*) ;
 TYPE_9__ cg ;
 TYPE_8__ cg_addMarks ;
 int markTotal ;
 int memcpy (int ,TYPE_2__*,int) ;
 int trap_CM_MarkFragments (int,void*,float*,int,float*,int,TYPE_4__*) ;
 int trap_R_AddPolyToScene (int ,int,TYPE_2__*) ;

void CG_ImpactMark( qhandle_t markShader, const vec3_t origin, const vec3_t dir,
       float orientation, float red, float green, float blue, float alpha,
       qboolean alphaFade, float radius, qboolean temporary ) {
 vec3_t axis[3];
 float texCoordScale;
 vec3_t originalPoints[4];
 byte colors[4];
 int i, j;
 int numFragments;
 markFragment_t markFragments[MAX_MARK_FRAGMENTS], *mf;
 vec3_t markPoints[MAX_MARK_POINTS];
 vec3_t projection;

 if ( !cg_addMarks.integer ) {
  return;
 }

 if ( radius <= 0 ) {
  CG_Error( "CG_ImpactMark called with <= 0 radius" );
 }






 VectorNormalize2( dir, axis[0] );
 PerpendicularVector( axis[1], axis[0] );
 RotatePointAroundVector( axis[2], axis[0], axis[1], orientation );
 CrossProduct( axis[0], axis[2], axis[1] );

 texCoordScale = 0.5 * 1.0 / radius;


 for ( i = 0 ; i < 3 ; i++ ) {
  originalPoints[0][i] = origin[i] - radius * axis[1][i] - radius * axis[2][i];
  originalPoints[1][i] = origin[i] + radius * axis[1][i] - radius * axis[2][i];
  originalPoints[2][i] = origin[i] + radius * axis[1][i] + radius * axis[2][i];
  originalPoints[3][i] = origin[i] - radius * axis[1][i] + radius * axis[2][i];
 }


 VectorScale( dir, -20, projection );
 numFragments = trap_CM_MarkFragments( 4, (void *)originalPoints,
     projection, MAX_MARK_POINTS, markPoints[0],
     MAX_MARK_FRAGMENTS, markFragments );

 colors[0] = red * 255;
 colors[1] = green * 255;
 colors[2] = blue * 255;
 colors[3] = alpha * 255;

 for ( i = 0, mf = markFragments ; i < numFragments ; i++, mf++ ) {
  polyVert_t *v;
  polyVert_t verts[MAX_VERTS_ON_POLY];
  markPoly_t *mark;



  if ( mf->numPoints > MAX_VERTS_ON_POLY ) {
   mf->numPoints = MAX_VERTS_ON_POLY;
  }
  for ( j = 0, v = verts ; j < mf->numPoints ; j++, v++ ) {
   vec3_t delta;

   VectorCopy( markPoints[mf->firstPoint + j], v->xyz );

   VectorSubtract( v->xyz, origin, delta );
   v->st[0] = 0.5 + DotProduct( delta, axis[1] ) * texCoordScale;
   v->st[1] = 0.5 + DotProduct( delta, axis[2] ) * texCoordScale;
   *(int *)v->modulate = *(int *)colors;
  }


  if ( temporary ) {
   trap_R_AddPolyToScene( markShader, mf->numPoints, verts );
   continue;
  }


  mark = CG_AllocMark();
  mark->time = cg.time;
  mark->alphaFade = alphaFade;
  mark->markShader = markShader;
  mark->poly.numVerts = mf->numPoints;
  mark->color[0] = red;
  mark->color[1] = green;
  mark->color[2] = blue;
  mark->color[3] = alpha;
  memcpy( mark->verts, verts, mf->numPoints * sizeof( verts[0] ) );
  markTotal++;
 }
}
