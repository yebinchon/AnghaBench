
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {float* origin; int angles; } ;
struct TYPE_8__ {float* maxs; float* mins; } ;
struct TYPE_10__ {float speed; float wait; float* pos2; float* pos1; int targetname; struct TYPE_10__* parent; int blocked; int touch; TYPE_2__ s; TYPE_1__ r; int model; int damage; void* soundPos2; void* soundPos1; void* sound2to1; void* sound1to2; } ;
typedef TYPE_3__ gentity_t ;


 int Blocked_Door ;
 void* G_SoundIndex (char*) ;
 int G_SpawnFloat (char*,char*,float*) ;
 int G_SpawnInt (char*,char*,int *) ;
 int InitMover (TYPE_3__*) ;
 int SpawnPlatTrigger (TYPE_3__*) ;
 int Touch_Plat ;
 int VectorClear (int ) ;
 int VectorCopy (float*,float*) ;
 int trap_SetBrushModel (TYPE_3__*,int ) ;

void SP_func_plat (gentity_t *ent) {
 float lip, height;

 ent->sound1to2 = ent->sound2to1 = G_SoundIndex("sound/movers/plats/pt1_strt.wav");
 ent->soundPos1 = ent->soundPos2 = G_SoundIndex("sound/movers/plats/pt1_end.wav");

 VectorClear (ent->s.angles);

 G_SpawnFloat( "speed", "200", &ent->speed );
 G_SpawnInt( "dmg", "2", &ent->damage );
 G_SpawnFloat( "wait", "1", &ent->wait );
 G_SpawnFloat( "lip", "8", &lip );

 ent->wait = 1000;


 trap_SetBrushModel( ent, ent->model );

 if ( !G_SpawnFloat( "height", "0", &height ) ) {
  height = (ent->r.maxs[2] - ent->r.mins[2]) - lip;
 }


 VectorCopy( ent->s.origin, ent->pos2 );
 VectorCopy( ent->pos2, ent->pos1 );
 ent->pos1[2] -= height;

 InitMover( ent );



 ent->touch = Touch_Plat;

 ent->blocked = Blocked_Door;

 ent->parent = ent;


 if ( !ent->targetname ) {
  SpawnPlatTrigger(ent);
 }
}
