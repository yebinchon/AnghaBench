
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int* trBase; } ;
struct TYPE_8__ {TYPE_1__ pos; } ;
struct TYPE_9__ {int timestamp; int nextthink; TYPE_2__ s; int physicsObject; } ;
typedef TYPE_3__ gentity_t ;
struct TYPE_10__ {int time; } ;


 TYPE_5__ level ;
 int qfalse ;
 int trap_UnlinkEntity (TYPE_3__*) ;

void BodySink( gentity_t *ent ) {
 if ( level.time - ent->timestamp > 6500 ) {

  trap_UnlinkEntity( ent );
  ent->physicsObject = qfalse;
  return;
 }
 ent->nextthink = level.time + 100;
 ent->s.pos.trBase[2] -= 1;
}
