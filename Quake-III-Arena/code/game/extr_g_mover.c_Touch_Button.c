
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int trace_t ;
struct TYPE_7__ {scalar_t__ moverState; int client; } ;
typedef TYPE_1__ gentity_t ;


 scalar_t__ MOVER_POS1 ;
 int Use_BinaryMover (TYPE_1__*,TYPE_1__*,TYPE_1__*) ;

void Touch_Button(gentity_t *ent, gentity_t *other, trace_t *trace ) {
 if ( !other->client ) {
  return;
 }

 if ( ent->moverState == MOVER_POS1 ) {
  Use_BinaryMover( ent, other, other );
 }
}
