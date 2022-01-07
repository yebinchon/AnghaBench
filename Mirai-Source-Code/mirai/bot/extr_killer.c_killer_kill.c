
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int kill (int ,int) ;
 int killer_pid ;

void killer_kill(void)
{
    kill(killer_pid, 9);
}
