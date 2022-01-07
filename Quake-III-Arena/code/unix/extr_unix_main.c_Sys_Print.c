
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fputs (char const*,int ) ;
 int stderr ;
 int tty_Hide () ;
 int tty_Show () ;
 scalar_t__ ttycon_on ;

void Sys_Print( const char *msg )
{
  if (ttycon_on)
  {
    tty_Hide();
  }
  fputs(msg, stderr);
  if (ttycon_on)
  {
    tty_Show();
  }
}
