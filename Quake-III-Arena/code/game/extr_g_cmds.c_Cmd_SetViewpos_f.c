
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int * vec3_t ;
typedef int gentity_t ;
typedef int buffer ;
struct TYPE_2__ {int integer; } ;


 int MAX_TOKEN_CHARS ;
 int TeleportPlayer (int *,int *,int *) ;
 int VectorClear (int *) ;
 size_t YAW ;
 int atof (char*) ;
 TYPE_1__ g_cheats ;
 int g_entities ;
 int trap_Argc () ;
 int trap_Argv (int,char*,int) ;
 int trap_SendServerCommand (int *,int ) ;
 int va (char*) ;

void Cmd_SetViewpos_f( gentity_t *ent ) {
 vec3_t origin, angles;
 char buffer[MAX_TOKEN_CHARS];
 int i;

 if ( !g_cheats.integer ) {
  trap_SendServerCommand( ent-g_entities, va("print \"Cheats are not enabled on this server.\n\""));
  return;
 }
 if ( trap_Argc() != 5 ) {
  trap_SendServerCommand( ent-g_entities, va("print \"usage: setviewpos x y z yaw\n\""));
  return;
 }

 VectorClear( angles );
 for ( i = 0 ; i < 3 ; i++ ) {
  trap_Argv( i + 1, buffer, sizeof( buffer ) );
  origin[i] = atof( buffer );
 }

 trap_Argv( 4, buffer, sizeof( buffer ) );
 angles[YAW] = atof( buffer );

 TeleportPlayer( ent, origin, angles );
}
