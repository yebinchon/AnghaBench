
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PID ;


 int SIGTERM ;
 int close (int) ;
 int kill (scalar_t__,int ) ;

void CloseChildProcess(PID pid, int* fd )
{



 if( fd != 0 )
 {
   close(fd[0]);
   close(fd[1]);
 }

 if( pid > 0 )
 {
  kill(pid, SIGTERM);
 }

}
