
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_6__ {scalar_t__ ucStaticallyAllocated; } ;
typedef TYPE_1__ Queue_t ;
typedef scalar_t__ QueueHandle_t ;


 int configASSERT (TYPE_1__* const) ;
 int mtCOVERAGE_TEST_MARKER () ;
 scalar_t__ pdFALSE ;
 int traceQUEUE_DELETE (TYPE_1__* const) ;
 int vPortFree (TYPE_1__* const) ;
 int vQueueUnregisterQueue (TYPE_1__* const) ;

void vQueueDelete( QueueHandle_t xQueue )
{
Queue_t * const pxQueue = ( Queue_t * ) xQueue;

 configASSERT( pxQueue );

 traceQUEUE_DELETE( pxQueue );
 {


  ( void ) pxQueue;
 }

}
