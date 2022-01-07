
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ UBaseType_t ;
struct TYPE_2__ {scalar_t__ uxMessagesWaiting; int mux; } ;
typedef TYPE_1__ Queue_t ;
typedef scalar_t__ QueueHandle_t ;
typedef int BaseType_t ;


 int configASSERT (scalar_t__) ;
 int pdFALSE ;
 int pdTRUE ;
 int taskENTER_CRITICAL_ISR (int *) ;
 int taskEXIT_CRITICAL_ISR (int *) ;

BaseType_t xQueueIsQueueEmptyFromISR( QueueHandle_t xQueue )
{
BaseType_t xReturn;
Queue_t * const pxQueue = ( Queue_t * ) xQueue;

 configASSERT( xQueue );
 taskENTER_CRITICAL_ISR(&pxQueue->mux);
 if( ( ( Queue_t * ) xQueue )->uxMessagesWaiting == ( UBaseType_t ) 0 )
 {
  xReturn = pdTRUE;
 }
 else
 {
  xReturn = pdFALSE;
 }
 taskEXIT_CRITICAL_ISR(&pxQueue->mux);

 return xReturn;
}
