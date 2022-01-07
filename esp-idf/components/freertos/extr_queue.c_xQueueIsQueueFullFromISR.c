
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ uxMessagesWaiting; scalar_t__ uxLength; int mux; } ;
typedef TYPE_1__ Queue_t ;
typedef scalar_t__ QueueHandle_t ;
typedef int BaseType_t ;


 int configASSERT (scalar_t__) ;
 int pdFALSE ;
 int pdTRUE ;
 int taskENTER_CRITICAL_ISR (int *) ;
 int taskEXIT_CRITICAL_ISR (int *) ;

BaseType_t xQueueIsQueueFullFromISR( QueueHandle_t xQueue )
{
BaseType_t xReturn;
Queue_t * const pxQueue = ( Queue_t * ) xQueue;

 configASSERT( xQueue );
 taskENTER_CRITICAL_ISR(&pxQueue->mux);
 if( ( ( Queue_t * ) xQueue )->uxMessagesWaiting == ( ( Queue_t * ) xQueue )->uxLength )
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
