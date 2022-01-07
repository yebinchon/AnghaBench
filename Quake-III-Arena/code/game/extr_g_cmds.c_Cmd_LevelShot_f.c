
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int gentity_t ;
struct TYPE_2__ {scalar_t__ integer; } ;


 int BeginIntermission () ;
 int CheatsOk (int *) ;
 int g_entities ;
 TYPE_1__ g_gametype ;
 int trap_SendServerCommand (int *,char*) ;

void Cmd_LevelShot_f( gentity_t *ent ) {
 if ( !CheatsOk( ent ) ) {
  return;
 }


 if ( g_gametype.integer != 0 ) {
  trap_SendServerCommand( ent-g_entities,
   "print \"Must be in g_gametype 0 for levelshot\n\"" );
  return;
 }

 BeginIntermission();
 trap_SendServerCommand( ent-g_entities, "clientLevelShot" );
}
