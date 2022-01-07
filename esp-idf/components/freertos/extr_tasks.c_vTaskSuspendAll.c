
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int portENTER_CRITICAL_NESTED () ;
 int portEXIT_CRITICAL_NESTED (unsigned int) ;
 int * uxSchedulerSuspended ;
 size_t xPortGetCoreID () ;

void vTaskSuspendAll( void )
{




 unsigned state;

 state = portENTER_CRITICAL_NESTED();
 ++uxSchedulerSuspended[ xPortGetCoreID() ];
 portEXIT_CRITICAL_NESTED(state);
}
