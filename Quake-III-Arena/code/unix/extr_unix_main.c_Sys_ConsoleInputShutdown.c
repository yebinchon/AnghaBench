
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Com_Printf (char*) ;
 int TCSADRAIN ;
 int tcsetattr (int ,int ,int *) ;
 int tty_tc ;
 scalar_t__ ttycon_on ;

void Sys_ConsoleInputShutdown()
{
  if (ttycon_on)
  {
    Com_Printf("Shutdown tty console\n");
    tcsetattr (0, TCSADRAIN, &tty_tc);
  }
}
