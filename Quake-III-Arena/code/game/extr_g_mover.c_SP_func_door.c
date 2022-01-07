
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int * vec3_t ;
struct TYPE_9__ {int * origin; int angles; } ;
struct TYPE_8__ {int mins; int maxs; } ;
struct TYPE_10__ {int speed; int wait; int damage; int spawnflags; int flags; int think; scalar_t__ targetname; int takedamage; scalar_t__ nextthink; int * pos1; int * pos2; TYPE_2__ s; int * movedir; TYPE_1__ r; int model; int blocked; void* soundPos2; void* soundPos1; void* sound2to1; void* sound1to2; } ;
typedef TYPE_3__ gentity_t ;
struct TYPE_11__ {scalar_t__ time; } ;


 int Blocked_Door ;
 float DotProduct (int *,int *) ;
 int FL_TEAMSLAVE ;
 scalar_t__ FRAMETIME ;
 int G_SetMovedir (int ,int *) ;
 void* G_SoundIndex (char*) ;
 int G_SpawnFloat (char*,char*,float*) ;
 int G_SpawnInt (char*,char*,int*) ;
 int InitMover (TYPE_3__*) ;
 int Think_MatchTeam ;
 int Think_SpawnNewDoorTrigger ;
 int VectorCopy (int *,int *) ;
 int VectorMA (int *,float,int *,int *) ;
 int VectorSubtract (int ,int ,int *) ;
 int fabs (int ) ;
 TYPE_5__ level ;
 int qtrue ;
 int trap_SetBrushModel (TYPE_3__*,int ) ;

void SP_func_door (gentity_t *ent) {
 vec3_t abs_movedir;
 float distance;
 vec3_t size;
 float lip;

 ent->sound1to2 = ent->sound2to1 = G_SoundIndex("sound/movers/doors/dr1_strt.wav");
 ent->soundPos1 = ent->soundPos2 = G_SoundIndex("sound/movers/doors/dr1_end.wav");

 ent->blocked = Blocked_Door;


 if (!ent->speed)
  ent->speed = 400;


 if (!ent->wait)
  ent->wait = 2;
 ent->wait *= 1000;


 G_SpawnFloat( "lip", "8", &lip );


 G_SpawnInt( "dmg", "2", &ent->damage );


 VectorCopy( ent->s.origin, ent->pos1 );


 trap_SetBrushModel( ent, ent->model );
 G_SetMovedir (ent->s.angles, ent->movedir);
 abs_movedir[0] = fabs(ent->movedir[0]);
 abs_movedir[1] = fabs(ent->movedir[1]);
 abs_movedir[2] = fabs(ent->movedir[2]);
 VectorSubtract( ent->r.maxs, ent->r.mins, size );
 distance = DotProduct( abs_movedir, size ) - lip;
 VectorMA( ent->pos1, distance, ent->movedir, ent->pos2 );


 if ( ent->spawnflags & 1 ) {
  vec3_t temp;

  VectorCopy( ent->pos2, temp );
  VectorCopy( ent->s.origin, ent->pos2 );
  VectorCopy( temp, ent->pos1 );
 }

 InitMover( ent );

 ent->nextthink = level.time + FRAMETIME;

 if ( ! (ent->flags & FL_TEAMSLAVE ) ) {
  int health;

  G_SpawnInt( "health", "0", &health );
  if ( health ) {
   ent->takedamage = qtrue;
  }
  if ( ent->targetname || health ) {

   ent->think = Think_MatchTeam;
  } else {
   ent->think = Think_SpawnNewDoorTrigger;
  }
 }


}
