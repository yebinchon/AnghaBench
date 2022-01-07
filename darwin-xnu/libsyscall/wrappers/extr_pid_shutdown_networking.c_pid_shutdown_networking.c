
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pid_shutdown_sockets (int,int) ;

int
pid_shutdown_networking(int pid, int level)
{
 return pid_shutdown_sockets(pid, level);
}
