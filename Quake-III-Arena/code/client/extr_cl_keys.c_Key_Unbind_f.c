
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Cmd_Argc () ;
 int Cmd_Argv (int) ;
 int Com_Printf (char*,...) ;
 int Key_SetBinding (int,char*) ;
 int Key_StringToKeynum (int ) ;

void Key_Unbind_f (void)
{
 int b;

 if (Cmd_Argc() != 2)
 {
  Com_Printf ("unbind <key> : remove commands from a key\n");
  return;
 }

 b = Key_StringToKeynum (Cmd_Argv(1));
 if (b==-1)
 {
  Com_Printf ("\"%s\" isn't a valid key\n", Cmd_Argv(1));
  return;
 }

 Key_SetBinding (b, "");
}
