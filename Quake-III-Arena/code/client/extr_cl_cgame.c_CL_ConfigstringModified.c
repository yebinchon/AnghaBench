
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* stringData; int* stringOffsets; int dataCount; } ;
typedef TYPE_1__ gameState_t ;
struct TYPE_5__ {TYPE_1__ gameState; } ;


 int CL_SystemInfoChanged () ;
 int CS_SYSTEMINFO ;
 char* Cmd_ArgsFrom (int) ;
 int Cmd_Argv (int) ;
 int Com_Error (int ,char*) ;
 int Com_Memcpy (char*,char*,int) ;
 int Com_Memset (TYPE_1__*,int ,int) ;
 int ERR_DROP ;
 int MAX_CONFIGSTRINGS ;
 int MAX_GAMESTATE_CHARS ;
 int atoi (int ) ;
 TYPE_2__ cl ;
 int strcmp (char*,char*) ;
 int strlen (char*) ;

void CL_ConfigstringModified( void ) {
 char *old, *s;
 int i, index;
 char *dup;
 gameState_t oldGs;
 int len;

 index = atoi( Cmd_Argv(1) );
 if ( index < 0 || index >= MAX_CONFIGSTRINGS ) {
  Com_Error( ERR_DROP, "configstring > MAX_CONFIGSTRINGS" );
 }

 s = Cmd_ArgsFrom(2);

 old = cl.gameState.stringData + cl.gameState.stringOffsets[ index ];
 if ( !strcmp( old, s ) ) {
  return;
 }


 oldGs = cl.gameState;

 Com_Memset( &cl.gameState, 0, sizeof( cl.gameState ) );


 cl.gameState.dataCount = 1;

 for ( i = 0 ; i < MAX_CONFIGSTRINGS ; i++ ) {
  if ( i == index ) {
   dup = s;
  } else {
   dup = oldGs.stringData + oldGs.stringOffsets[ i ];
  }
  if ( !dup[0] ) {
   continue;
  }

  len = strlen( dup );

  if ( len + 1 + cl.gameState.dataCount > MAX_GAMESTATE_CHARS ) {
   Com_Error( ERR_DROP, "MAX_GAMESTATE_CHARS exceeded" );
  }


  cl.gameState.stringOffsets[ i ] = cl.gameState.dataCount;
  Com_Memcpy( cl.gameState.stringData + cl.gameState.dataCount, dup, len + 1 );
  cl.gameState.dataCount += len + 1;
 }

 if ( index == CS_SYSTEMINFO ) {

  CL_SystemInfoChanged();
 }

}
