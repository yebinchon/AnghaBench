
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int trace_t ;
typedef int trace ;
struct TYPE_12__ {int numtouch; size_t* touchents; } ;
typedef TYPE_2__ pmove_t ;
struct TYPE_11__ {int svFlags; } ;
struct TYPE_13__ {int (* touch ) (TYPE_3__*,TYPE_3__*,int *) ;TYPE_1__ r; } ;
typedef TYPE_3__ gentity_t ;


 int SVF_BOT ;
 TYPE_3__* g_entities ;
 int memset (int *,int ,int) ;
 int stub1 (TYPE_3__*,TYPE_3__*,int *) ;
 int stub2 (TYPE_3__*,TYPE_3__*,int *) ;

void ClientImpacts( gentity_t *ent, pmove_t *pm ) {
 int i, j;
 trace_t trace;
 gentity_t *other;

 memset( &trace, 0, sizeof( trace ) );
 for (i=0 ; i<pm->numtouch ; i++) {
  for (j=0 ; j<i ; j++) {
   if (pm->touchents[j] == pm->touchents[i] ) {
    break;
   }
  }
  if (j != i) {
   continue;
  }
  other = &g_entities[ pm->touchents[i] ];

  if ( ( ent->r.svFlags & SVF_BOT ) && ( ent->touch ) ) {
   ent->touch( ent, other, &trace );
  }

  if ( !other->touch ) {
   continue;
  }

  other->touch( other, ent, &trace );
 }

}
