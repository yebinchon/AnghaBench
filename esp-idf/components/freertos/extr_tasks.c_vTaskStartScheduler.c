
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ TickType_t ;
typedef int BaseType_t ;


 int configASSERT (int) ;
 int configMAX_TASK_NAME_LEN ;
 int mtCOVERAGE_TEST_MARKER () ;
 scalar_t__ pdFALSE ;
 int pdPASS ;
 int pdTRUE ;
 int portCONFIGURE_TIMER_FOR_RUN_TIME_STATS () ;
 int portDISABLE_INTERRUPTS () ;
 int portNUM_PROCESSORS ;
 int portPRIVILEGE_BIT ;
 int prvIdleTask ;
 int snprintf (char*,int,char*,int) ;
 int tskIDLE_PRIORITY ;
 int tskIDLE_STACK_SIZE ;
 int * xIdleTaskHandle ;
 scalar_t__ xPortStartScheduler () ;
 int xSchedulerRunning ;
 int xTaskCreatePinnedToCore (int ,char*,int ,void*,int,int *,int) ;
 scalar_t__ xTickCount ;
 int xTimerCreateTimerTask () ;

void vTaskStartScheduler( void )
{
BaseType_t xReturn;
BaseType_t i;


 for ( i=0; i<portNUM_PROCESSORS; i++) {

  char cIdleName[configMAX_TASK_NAME_LEN];
  snprintf(cIdleName, configMAX_TASK_NAME_LEN, "IDLE%d", i);







  {

   xReturn = xTaskCreatePinnedToCore( prvIdleTask, cIdleName, tskIDLE_STACK_SIZE, ( void * ) ((void*)0), ( tskIDLE_PRIORITY | portPRIVILEGE_BIT ), ((void*)0), i);
  }

 }
 if( xReturn == pdPASS )
 {





  portDISABLE_INTERRUPTS();


  xTickCount = ( TickType_t ) 0U;




  portCONFIGURE_TIMER_FOR_RUN_TIME_STATS();
  xSchedulerRunning = pdTRUE;



  if( xPortStartScheduler() != pdFALSE )
  {


  }
  else
  {

  }
 }
 else
 {



  configASSERT( xReturn );
 }
}
