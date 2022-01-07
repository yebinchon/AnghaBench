
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGSYS ;
 int getpid () ;
 int kill (int ,int ) ;

int setquota(void)
{
 return kill(getpid(), SIGSYS);
}
