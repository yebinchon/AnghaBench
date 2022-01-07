
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int* vec3_t ;
struct TYPE_11__ {double fraction; int endpos; } ;
typedef TYPE_2__ trace_t ;
struct TYPE_12__ {int* xyz; int* st; int* modulate; } ;
typedef TYPE_3__ polyVert_t ;
struct TYPE_13__ {int lerpOrigin; } ;
typedef TYPE_4__ centity_t ;
struct TYPE_15__ {int integer; } ;
struct TYPE_10__ {int wakeMarkShader; } ;
struct TYPE_14__ {TYPE_1__ media; } ;


 int CONTENTS_LAVA ;
 int CONTENTS_SLIME ;
 int CONTENTS_SOLID ;
 int CONTENTS_WATER ;
 int VectorCopy (int ,int*) ;
 TYPE_8__ cg_shadows ;
 TYPE_7__ cgs ;
 int trap_CM_BoxTrace (TYPE_2__*,int*,int*,int *,int *,int ,int) ;
 int trap_CM_PointContents (int*,int ) ;
 int trap_R_AddPolyToScene (int ,int,TYPE_3__*) ;

__attribute__((used)) static void CG_PlayerSplash( centity_t *cent ) {
 vec3_t start, end;
 trace_t trace;
 int contents;
 polyVert_t verts[4];

 if ( !cg_shadows.integer ) {
  return;
 }

 VectorCopy( cent->lerpOrigin, end );
 end[2] -= 24;



 contents = trap_CM_PointContents( end, 0 );
 if ( !( contents & ( CONTENTS_WATER | CONTENTS_SLIME | CONTENTS_LAVA ) ) ) {
  return;
 }

 VectorCopy( cent->lerpOrigin, start );
 start[2] += 32;


 contents = trap_CM_PointContents( start, 0 );
 if ( contents & ( CONTENTS_SOLID | CONTENTS_WATER | CONTENTS_SLIME | CONTENTS_LAVA ) ) {
  return;
 }


 trap_CM_BoxTrace( &trace, start, end, ((void*)0), ((void*)0), 0, ( CONTENTS_WATER | CONTENTS_SLIME | CONTENTS_LAVA ) );

 if ( trace.fraction == 1.0 ) {
  return;
 }


 VectorCopy( trace.endpos, verts[0].xyz );
 verts[0].xyz[0] -= 32;
 verts[0].xyz[1] -= 32;
 verts[0].st[0] = 0;
 verts[0].st[1] = 0;
 verts[0].modulate[0] = 255;
 verts[0].modulate[1] = 255;
 verts[0].modulate[2] = 255;
 verts[0].modulate[3] = 255;

 VectorCopy( trace.endpos, verts[1].xyz );
 verts[1].xyz[0] -= 32;
 verts[1].xyz[1] += 32;
 verts[1].st[0] = 0;
 verts[1].st[1] = 1;
 verts[1].modulate[0] = 255;
 verts[1].modulate[1] = 255;
 verts[1].modulate[2] = 255;
 verts[1].modulate[3] = 255;

 VectorCopy( trace.endpos, verts[2].xyz );
 verts[2].xyz[0] += 32;
 verts[2].xyz[1] += 32;
 verts[2].st[0] = 1;
 verts[2].st[1] = 1;
 verts[2].modulate[0] = 255;
 verts[2].modulate[1] = 255;
 verts[2].modulate[2] = 255;
 verts[2].modulate[3] = 255;

 VectorCopy( trace.endpos, verts[3].xyz );
 verts[3].xyz[0] += 32;
 verts[3].xyz[1] -= 32;
 verts[3].st[0] = 1;
 verts[3].st[1] = 0;
 verts[3].modulate[0] = 255;
 verts[3].modulate[1] = 255;
 verts[3].modulate[2] = 255;
 verts[3].modulate[3] = 255;

 trap_R_AddPolyToScene( cgs.media.wakeMarkShader, 4, verts );
}
