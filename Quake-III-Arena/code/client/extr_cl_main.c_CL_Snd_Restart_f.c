
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CL_Vid_Restart_f () ;
 int S_Init () ;
 int S_Shutdown () ;

void CL_Snd_Restart_f( void ) {
 S_Shutdown();
 S_Init();

 CL_Vid_Restart_f();
}
