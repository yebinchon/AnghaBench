
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLOCKS_PER_SEC ;
 int clock () ;

int Sys_MilliSeconds(void)
{
 return clock() * 1000 / CLOCKS_PER_SEC;
}
