
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ UBaseType_t ;
typedef scalar_t__ TickType_t ;
struct TYPE_2__ {int xGenericListItem; int uxPriority; int xEventListItem; } ;
typedef int List_t ;


 int configASSERT (int) ;
 int listSET_LIST_ITEM_VALUE (int *,scalar_t__ const) ;
 int mtCOVERAGE_TEST_MARKER () ;
 scalar_t__ const portMAX_DELAY ;
 int portRESET_READY_PRIORITY (int ,int ) ;
 int prvAddCurrentTaskToDelayedList (scalar_t__,...) ;
 TYPE_1__** pxCurrentTCB ;
 int taskENTER_CRITICAL (int *) ;
 scalar_t__ const taskEVENT_LIST_ITEM_VALUE_IN_USE ;
 int taskEXIT_CRITICAL (int *) ;
 scalar_t__ uxListRemove (int *) ;
 scalar_t__* uxSchedulerSuspended ;
 int uxTopReadyPriority ;
 int vListInsertEnd (int *,int *) ;
 size_t xPortGetCoreID () ;
 int xSuspendedTaskList ;
 int xTaskQueueMutex ;
 scalar_t__ const xTickCount ;

void vTaskPlaceOnUnorderedEventList( List_t * pxEventList, const TickType_t xItemValue, const TickType_t xTicksToWait )
{
TickType_t xTimeToWake;

 configASSERT( pxEventList );

 taskENTER_CRITICAL(&xTaskQueueMutex);



 configASSERT( uxSchedulerSuspended[ xPortGetCoreID() ] != 0 );




 listSET_LIST_ITEM_VALUE( &( pxCurrentTCB[ xPortGetCoreID() ]->xEventListItem ), xItemValue | taskEVENT_LIST_ITEM_VALUE_IN_USE );






 vListInsertEnd( pxEventList, &( pxCurrentTCB[ xPortGetCoreID() ]->xEventListItem ) );




 if( uxListRemove( &( pxCurrentTCB[ xPortGetCoreID() ]->xGenericListItem ) ) == ( UBaseType_t ) 0 )
 {


  portRESET_READY_PRIORITY( pxCurrentTCB[ xPortGetCoreID() ]->uxPriority, uxTopReadyPriority );
 }
 else
 {
  mtCOVERAGE_TEST_MARKER();
 }
 {



   xTimeToWake = xTickCount + xTicksToWait;
   prvAddCurrentTaskToDelayedList( xTimeToWake );
 }


 taskEXIT_CRITICAL(&xTaskQueueMutex);
}
