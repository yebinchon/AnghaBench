
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int trace_t ;
struct TYPE_7__ {TYPE_2__* parent; int client; } ;
typedef TYPE_1__ gentity_t ;
struct TYPE_8__ {scalar_t__ moverState; } ;


 scalar_t__ MOVER_POS1 ;
 int Use_BinaryMover (TYPE_2__*,TYPE_1__*,TYPE_1__*) ;

void Touch_PlatCenterTrigger(gentity_t *ent, gentity_t *other, trace_t *trace ) {
 if ( !other->client ) {
  return;
 }

 if ( ent->parent->moverState == MOVER_POS1 ) {
  Use_BinaryMover( ent->parent, ent, other );
 }
}
