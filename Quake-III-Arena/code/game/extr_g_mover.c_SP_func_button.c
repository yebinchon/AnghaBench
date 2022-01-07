
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef float* vec3_t ;
struct TYPE_8__ {int mins; int maxs; } ;
struct TYPE_7__ {int angles; int origin; } ;
struct TYPE_9__ {int speed; int wait; int touch; int takedamage; scalar_t__ health; int pos2; int * movedir; int pos1; TYPE_2__ r; TYPE_1__ s; int model; int sound1to2; } ;
typedef TYPE_3__ gentity_t ;


 int G_SetMovedir (int ,int *) ;
 int G_SoundIndex (char*) ;
 int G_SpawnFloat (char*,char*,float*) ;
 int InitMover (TYPE_3__*) ;
 int Touch_Button ;
 int VectorCopy (int ,int ) ;
 int VectorMA (int ,float,int *,int ) ;
 int VectorSubtract (int ,int ,float*) ;
 float fabs (int ) ;
 int qtrue ;
 int trap_SetBrushModel (TYPE_3__*,int ) ;

void SP_func_button( gentity_t *ent ) {
 vec3_t abs_movedir;
 float distance;
 vec3_t size;
 float lip;

 ent->sound1to2 = G_SoundIndex("sound/movers/switches/butn2.wav");

 if ( !ent->speed ) {
  ent->speed = 40;
 }

 if ( !ent->wait ) {
  ent->wait = 1;
 }
 ent->wait *= 1000;


 VectorCopy( ent->s.origin, ent->pos1 );


 trap_SetBrushModel( ent, ent->model );

 G_SpawnFloat( "lip", "4", &lip );

 G_SetMovedir( ent->s.angles, ent->movedir );
 abs_movedir[0] = fabs(ent->movedir[0]);
 abs_movedir[1] = fabs(ent->movedir[1]);
 abs_movedir[2] = fabs(ent->movedir[2]);
 VectorSubtract( ent->r.maxs, ent->r.mins, size );
 distance = abs_movedir[0] * size[0] + abs_movedir[1] * size[1] + abs_movedir[2] * size[2] - lip;
 VectorMA (ent->pos1, distance, ent->movedir, ent->pos2);

 if (ent->health) {

  ent->takedamage = qtrue;
 } else {

  ent->touch = Touch_Button;
 }

 InitMover( ent );
}
