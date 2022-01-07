
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pid_t ;


 int __kill (int ,int,int) ;

int
kill(pid_t pid, int sig)
{



 return(__kill(pid, sig, 0));

}
