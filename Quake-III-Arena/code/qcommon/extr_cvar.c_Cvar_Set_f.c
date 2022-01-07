
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Cmd_Argc () ;
 char* Cmd_Argv (int) ;
 int Com_Printf (char*) ;
 int Cvar_Set2 (char*,char*,int ) ;
 int MAX_STRING_TOKENS ;
 int qfalse ;
 int strcat (char*,char*) ;
 int strlen (char*) ;

void Cvar_Set_f( void ) {
 int i, c, l, len;
 char combined[MAX_STRING_TOKENS];

 c = Cmd_Argc();
 if ( c < 3 ) {
  Com_Printf ("usage: set <variable> <value>\n");
  return;
 }

 combined[0] = 0;
 l = 0;
 for ( i = 2 ; i < c ; i++ ) {
  len = strlen ( Cmd_Argv( i ) + 1 );
  if ( l + len >= MAX_STRING_TOKENS - 2 ) {
   break;
  }
  strcat( combined, Cmd_Argv( i ) );
  if ( i != c-1 ) {
   strcat( combined, " " );
  }
  l += len;
 }
 Cvar_Set2 (Cmd_Argv(1), combined, qfalse);
}
