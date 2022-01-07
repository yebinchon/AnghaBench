
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BotAIStartFrame (int) ;
 int ClientBegin (int) ;
 int ClientCommand (int) ;
 scalar_t__ ClientConnect (int,int,int) ;
 int ClientDisconnect (int) ;
 int ClientThink (int) ;
 int ClientUserinfoChanged (int) ;
 int ConsoleCommand () ;
 int G_InitGame (int,int,int) ;
 int G_RunFrame (int) ;
 int G_ShutdownGame (int) ;

int vmMain( int command, int arg0, int arg1, int arg2, int arg3, int arg4, int arg5, int arg6, int arg7, int arg8, int arg9, int arg10, int arg11 ) {
 switch ( command ) {
 case 130:
  G_InitGame( arg0, arg1, arg2 );
  return 0;
 case 128:
  G_ShutdownGame( arg0 );
  return 0;
 case 135:
  return (int)ClientConnect( arg0, arg1, arg2 );
 case 133:
  ClientThink( arg0 );
  return 0;
 case 132:
  ClientUserinfoChanged( arg0 );
  return 0;
 case 134:
  ClientDisconnect( arg0 );
  return 0;
 case 137:
  ClientBegin( arg0 );
  return 0;
 case 136:
  ClientCommand( arg0 );
  return 0;
 case 129:
  G_RunFrame( arg0 );
  return 0;
 case 131:
  return ConsoleCommand();
 case 138:
  return BotAIStartFrame( arg0 );
 }

 return -1;
}
