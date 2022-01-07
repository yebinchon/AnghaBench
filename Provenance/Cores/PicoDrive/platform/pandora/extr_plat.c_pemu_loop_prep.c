
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fflush (int ) ;
 int sleep (int ) ;
 int stderr ;
 int stdout ;
 int sync () ;

void pemu_loop_prep(void)
{

 fflush(stdout);
 fflush(stderr);
 sync();
 sleep(0);
}
