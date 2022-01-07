
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clock () ;
 int getpid () ;
 int getppid () ;
 int time (int *) ;
 int w ;
 int x ;
 int y ;
 int z ;

void rand_init(void)
{
    x = time(((void*)0));
    y = getpid() ^ getppid();
    z = clock();
    w = z ^ y;
}
