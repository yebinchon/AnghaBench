
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int8_t ;
typedef scalar_t__ const UBaseType_t ;
struct TYPE_5__ {scalar_t__ uxLength; scalar_t__ uxItemSize; int * pxQueueSetContainer; int ucQueueType; int * pcHead; } ;
typedef TYPE_1__ Queue_t ;


 int pdTRUE ;
 int traceQUEUE_CREATE (TYPE_1__*) ;
 int xQueueGenericReset (TYPE_1__*,int ) ;

__attribute__((used)) static void prvInitialiseNewQueue( const UBaseType_t uxQueueLength, const UBaseType_t uxItemSize, uint8_t *pucQueueStorage, const uint8_t ucQueueType, Queue_t *pxNewQueue )
{


 ( void ) ucQueueType;

 if( uxItemSize == ( UBaseType_t ) 0 )
 {




  pxNewQueue->pcHead = ( int8_t * ) pxNewQueue;
 }
 else
 {

  pxNewQueue->pcHead = ( int8_t * ) pucQueueStorage;
 }



 pxNewQueue->uxLength = uxQueueLength;
 pxNewQueue->uxItemSize = uxItemSize;
 ( void ) xQueueGenericReset( pxNewQueue, pdTRUE );
 traceQUEUE_CREATE( pxNewQueue );
}
