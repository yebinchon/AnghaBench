
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CL_Shutdown () ;
 int FNDELAY ;
 int F_GETFL ;
 int F_SETFL ;
 int Sys_Exit (int ) ;
 int fcntl (int ,int ,int) ;

void Sys_Quit (void) {
  CL_Shutdown ();
  fcntl (0, F_SETFL, fcntl (0, F_GETFL, 0) & ~FNDELAY);
  Sys_Exit(0);
}
