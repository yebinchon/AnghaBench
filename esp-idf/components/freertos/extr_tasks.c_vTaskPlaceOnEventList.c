
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UBaseType_t ;
typedef scalar_t__ TickType_t ;
struct TYPE_3__ {int xGenericListItem; int uxPriority; int xEventListItem; } ;
typedef int List_t ;


 int configASSERT (int * const) ;
 int mtCOVERAGE_TEST_MARKER () ;
 scalar_t__ const portMAX_DELAY ;
 int portRESET_READY_PRIORITY (int ,int ) ;
 int prvAddCurrentTaskToDelayedList (scalar_t__,...) ;
 TYPE_1__** pxCurrentTCB ;
 int taskENTER_CRITICAL (int *) ;
 int taskEXIT_CRITICAL (int *) ;
 int traceMOVED_TASK_TO_SUSPENDED_LIST (TYPE_1__*) ;
 scalar_t__ uxListRemove (int *) ;
 int uxTopReadyPriority ;
 int vListInsert (int * const,int *) ;
 int vListInsertEnd (int *,int *) ;
 size_t xPortGetCoreID () ;
 int xSuspendedTaskList ;
 int xTaskQueueMutex ;
 scalar_t__ const xTickCount ;

void vTaskPlaceOnEventList( List_t * const pxEventList, const TickType_t xTicksToWait )
{
TickType_t xTimeToWake;

 configASSERT( pxEventList );

 taskENTER_CRITICAL(&xTaskQueueMutex);





 vListInsert( pxEventList, &( pxCurrentTCB[ xPortGetCoreID() ]->xEventListItem ) );




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
