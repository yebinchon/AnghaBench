
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IN_Init () ;
 int IN_Shutdown () ;

void Sys_In_Restart_f( void )
{
  IN_Shutdown();
  IN_Init();
}
