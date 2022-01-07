
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Cmd_Argc () ;
 char* Cmd_Argv (int) ;
 int Com_Printf (char*,char*,char*) ;
 char* getenv (char*) ;
 int putenv (char*) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;

void CL_Setenv_f( void ) {
 int argc = Cmd_Argc();

 if ( argc > 2 ) {
  char buffer[1024];
  int i;

  strcpy( buffer, Cmd_Argv(1) );
  strcat( buffer, "=" );

  for ( i = 2; i < argc; i++ ) {
   strcat( buffer, Cmd_Argv( i ) );
   strcat( buffer, " " );
  }

  putenv( buffer );
 } else if ( argc == 2 ) {
  char *env = getenv( Cmd_Argv(1) );

  if ( env ) {
   Com_Printf( "%s=%s\n", Cmd_Argv(1), env );
  } else {
   Com_Printf( "%s undefined\n", Cmd_Argv(1), env );
  }
 }
}
