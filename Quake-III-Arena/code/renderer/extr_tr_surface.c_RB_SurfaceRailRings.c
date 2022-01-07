
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_6__ {int origin; int oldorigin; } ;
typedef TYPE_2__ refEntity_t ;
struct TYPE_8__ {TYPE_1__* currentEntity; } ;
struct TYPE_7__ {int value; } ;
struct TYPE_5__ {TYPE_2__ e; } ;


 int DoRailDiscs (int,int ,int ,int ,int ) ;
 int MakeNormalVectors (int ,int ,int ) ;
 int VectorCopy (int ,int ) ;
 int VectorNormalize (int ) ;
 int VectorScale (int ,int,int ) ;
 int VectorSubtract (int ,int ,int ) ;
 TYPE_4__ backEnd ;
 TYPE_3__* r_railSegmentLength ;

void RB_SurfaceRailRings( void ) {
 refEntity_t *e;
 int numSegs;
 int len;
 vec3_t vec;
 vec3_t right, up;
 vec3_t start, end;

 e = &backEnd.currentEntity->e;

 VectorCopy( e->oldorigin, start );
 VectorCopy( e->origin, end );


 VectorSubtract( end, start, vec );
 len = VectorNormalize( vec );
 MakeNormalVectors( vec, right, up );
 numSegs = ( len ) / r_railSegmentLength->value;
 if ( numSegs <= 0 ) {
  numSegs = 1;
 }

 VectorScale( vec, r_railSegmentLength->value, vec );

 DoRailDiscs( numSegs, start, vec, right, up );
}
