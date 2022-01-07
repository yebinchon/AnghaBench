
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int integer; } ;


 int Cmd_Argc () ;
 char* Cmd_Args () ;
 int Com_Printf (char*) ;
 int SV_SendServerCommand (int *,char*,char*) ;
 TYPE_1__* com_sv_running ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void SV_ConSay_f(void) {
 char *p;
 char text[1024];


 if ( !com_sv_running->integer ) {
  Com_Printf( "Server is not running.\n" );
  return;
 }

 if ( Cmd_Argc () < 2 ) {
  return;
 }

 strcpy (text, "console: ");
 p = Cmd_Args();

 if ( *p == '"' ) {
  p++;
  p[strlen(p)-1] = 0;
 }

 strcat(text, p);

 SV_SendServerCommand(((void*)0), "chat \"%s\n\"", text);
}
