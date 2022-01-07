
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LWP_InitQueue (int *) ;
 int exi_wait_inited ;
 int time_exi_wait ;

void __timesystem_init()
{
 if(!exi_wait_inited) {
  exi_wait_inited = 1;
  LWP_InitQueue(&time_exi_wait);
 }
}
