
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int str ;


 int AddIP (char*) ;
 int G_Printf (char*) ;
 int MAX_TOKEN_CHARS ;
 int trap_Argc () ;
 int trap_Argv (int,char*,int) ;

void Svcmd_AddIP_f (void)
{
 char str[MAX_TOKEN_CHARS];

 if ( trap_Argc() < 2 ) {
  G_Printf("Usage:  addip <ip-mask>\n");
  return;
 }

 trap_Argv( 1, str, sizeof( str ) );

 AddIP( str );

}
