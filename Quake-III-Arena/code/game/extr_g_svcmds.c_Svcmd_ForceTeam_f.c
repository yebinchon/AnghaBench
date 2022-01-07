
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int str ;
typedef int gclient_t ;
struct TYPE_2__ {int * clients; } ;


 int * ClientForString (char*) ;
 int MAX_TOKEN_CHARS ;
 int SetTeam (int *,char*) ;
 int * g_entities ;
 TYPE_1__ level ;
 int trap_Argv (int,char*,int) ;

void Svcmd_ForceTeam_f( void ) {
 gclient_t *cl;
 char str[MAX_TOKEN_CHARS];


 trap_Argv( 1, str, sizeof( str ) );
 cl = ClientForString( str );
 if ( !cl ) {
  return;
 }


 trap_Argv( 2, str, sizeof( str ) );
 SetTeam( &g_entities[cl - level.clients], str );
}
