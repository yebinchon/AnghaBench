
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int t ;
struct winsize {int ws_col; } ;
typedef int UINT ;
typedef int CONSOLE ;


 int MsGetConsoleWidth () ;
 int TIOCGWINSZ ;
 int Zero (struct winsize*,int) ;
 scalar_t__ ioctl (int,int ,struct winsize*) ;

UINT ConsoleLocalGetWidth(CONSOLE *c)
{
 UINT ret = 0;

 if (c == ((void*)0))
 {
  return 0;
 }




 {
  struct winsize t;

  Zero(&t, sizeof(t));

  if (ioctl(1, TIOCGWINSZ, &t) == 0)
  {
   ret = t.ws_col;
  }
 }


 return ret;
}
