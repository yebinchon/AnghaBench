
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ epair_t ;
struct TYPE_6__ {TYPE_1__* epairs; } ;
typedef TYPE_2__ entity_t ;


 int Error (char*) ;
 int GetToken (int ) ;
 size_t MAX_MAP_ENTITIES ;
 TYPE_1__* ParseEpair () ;
 TYPE_2__* entities ;
 size_t num_entities ;
 int qfalse ;
 int qtrue ;
 scalar_t__ strcmp (int ,char*) ;
 int token ;

qboolean ParseEntity( void ) {
 epair_t *e;
 entity_t *mapent;

 if ( !GetToken (qtrue) ) {
  return qfalse;
 }

 if ( strcmp (token, "{") ) {
  Error ("ParseEntity: { not found");
 }
 if ( num_entities == MAX_MAP_ENTITIES ) {
  Error ("num_entities == MAX_MAP_ENTITIES");
 }
 mapent = &entities[num_entities];
 num_entities++;

 do {
  if ( !GetToken (qtrue) ) {
   Error ("ParseEntity: EOF without closing brace");
  }
  if ( !strcmp (token, "}") ) {
   break;
  }
  e = ParseEpair ();
  e->next = mapent->epairs;
  mapent->epairs = e;
 } while (1);

 return qtrue;
}
