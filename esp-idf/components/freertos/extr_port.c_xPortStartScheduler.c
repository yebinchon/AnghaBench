
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BaseType_t ;


 int _frxt_tick_timer_init () ;
 int _xt_coproc_init () ;
 int _xt_tick_divisor_init () ;
 int pdTRUE ;
 int* port_xSchedulerRunning ;
 size_t xPortGetCoreID () ;

BaseType_t xPortStartScheduler( void )
{
 _xt_tick_divisor_init();


 _frxt_tick_timer_init();

 port_xSchedulerRunning[xPortGetCoreID()] = 1;


 __asm__ volatile ("call0    _frxt_dispatch\n");


 return pdTRUE;
}
