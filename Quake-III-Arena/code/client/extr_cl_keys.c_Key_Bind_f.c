
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ binding; } ;


 int Cmd_Argc () ;
 char* Cmd_Argv (int) ;
 int Com_Printf (char*,...) ;
 int Key_SetBinding (int,char*) ;
 int Key_StringToKeynum (char*) ;
 TYPE_1__* keys ;
 int strcat (char*,char*) ;

void Key_Bind_f (void)
{
 int i, c, b;
 char cmd[1024];

 c = Cmd_Argc();

 if (c < 2)
 {
  Com_Printf ("bind <key> [command] : attach a command to a key\n");
  return;
 }
 b = Key_StringToKeynum (Cmd_Argv(1));
 if (b==-1)
 {
  Com_Printf ("\"%s\" isn't a valid key\n", Cmd_Argv(1));
  return;
 }

 if (c == 2)
 {
  if (keys[b].binding)
   Com_Printf ("\"%s\" = \"%s\"\n", Cmd_Argv(1), keys[b].binding );
  else
   Com_Printf ("\"%s\" is not bound\n", Cmd_Argv(1) );
  return;
 }


 cmd[0] = 0;
 for (i=2 ; i< c ; i++)
 {
  strcat (cmd, Cmd_Argv(i));
  if (i != (c-1))
   strcat (cmd, " ");
 }

 Key_SetBinding (b, cmd);
}
