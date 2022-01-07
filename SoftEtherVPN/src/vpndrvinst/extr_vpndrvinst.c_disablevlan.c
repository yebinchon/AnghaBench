
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int MsDisableVLan (char*) ;
 int _exit (int) ;

void disablevlan(UINT num, char **arg)
{
 bool ok;
 if (num < 1)
 {
  return;
 }

 ok = MsDisableVLan(arg[0]);

 if (ok == 0)
 {
  _exit(1);
 }
 else
 {
  _exit(0);
 }
}
