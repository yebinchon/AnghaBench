
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Cmd_Argc () ;
 int Cmd_Argv (int) ;
 int Com_Printf (char*,...) ;

void Cmd_Echo_f (void)
{
 int i;

 for (i=1 ; i<Cmd_Argc() ; i++)
  Com_Printf ("%s ",Cmd_Argv(i));
 Com_Printf ("\n");
}
