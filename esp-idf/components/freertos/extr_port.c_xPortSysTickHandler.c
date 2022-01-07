
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ BaseType_t ;


 int SYSTICK_INTR_ID ;
 scalar_t__ pdFALSE ;
 int portYIELD_FROM_ISR () ;
 int portbenchmarkIntLatency () ;
 int traceISR_ENTER (int ) ;
 int traceISR_EXIT () ;
 scalar_t__ xTaskIncrementTick () ;

BaseType_t xPortSysTickHandler( void )
{
 BaseType_t ret;

 portbenchmarkIntLatency();
 traceISR_ENTER(SYSTICK_INTR_ID);
 ret = xTaskIncrementTick();
 if( ret != pdFALSE )
 {
  portYIELD_FROM_ISR();
 } else {
  traceISR_EXIT();
 }
 return ret;
}
