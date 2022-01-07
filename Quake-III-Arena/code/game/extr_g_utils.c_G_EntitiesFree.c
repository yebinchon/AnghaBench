
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_4__ {scalar_t__ inuse; } ;
typedef TYPE_1__ gentity_t ;
struct TYPE_5__ {int num_entities; } ;


 size_t MAX_CLIENTS ;
 TYPE_1__* g_entities ;
 TYPE_2__ level ;
 int qfalse ;
 int qtrue ;

qboolean G_EntitiesFree( void ) {
 int i;
 gentity_t *e;

 e = &g_entities[MAX_CLIENTS];
 for ( i = MAX_CLIENTS; i < level.num_entities; i++, e++) {
  if ( e->inuse ) {
   continue;
  }

  return qtrue;
 }
 return qfalse;
}
