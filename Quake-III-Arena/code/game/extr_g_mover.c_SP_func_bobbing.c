
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int trDuration; float trTime; float* trDelta; int trType; int trBase; } ;
struct TYPE_10__ {TYPE_2__ pos; int origin; } ;
struct TYPE_8__ {int currentOrigin; } ;
struct TYPE_11__ {float speed; int spawnflags; TYPE_3__ s; TYPE_1__ r; int model; int damage; } ;
typedef TYPE_4__ gentity_t ;


 int G_SpawnFloat (char*,char*,float*) ;
 int G_SpawnInt (char*,char*,int *) ;
 int InitMover (TYPE_4__*) ;
 int TR_SINE ;
 int VectorCopy (int ,int ) ;
 int trap_SetBrushModel (TYPE_4__*,int ) ;

void SP_func_bobbing (gentity_t *ent) {
 float height;
 float phase;

 G_SpawnFloat( "speed", "4", &ent->speed );
 G_SpawnFloat( "height", "32", &height );
 G_SpawnInt( "dmg", "2", &ent->damage );
 G_SpawnFloat( "phase", "0", &phase );

 trap_SetBrushModel( ent, ent->model );
 InitMover( ent );

 VectorCopy( ent->s.origin, ent->s.pos.trBase );
 VectorCopy( ent->s.origin, ent->r.currentOrigin );

 ent->s.pos.trDuration = ent->speed * 1000;
 ent->s.pos.trTime = ent->s.pos.trDuration * phase;
 ent->s.pos.trType = TR_SINE;


 if ( ent->spawnflags & 1 ) {
  ent->s.pos.trDelta[0] = height;
 } else if ( ent->spawnflags & 2 ) {
  ent->s.pos.trDelta[1] = height;
 } else {
  ent->s.pos.trDelta[2] = height;
 }
}
