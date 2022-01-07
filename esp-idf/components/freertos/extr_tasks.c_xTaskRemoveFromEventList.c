
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t UBaseType_t ;
struct TYPE_6__ {scalar_t__ uxPriority; } ;
struct TYPE_5__ {size_t xCoreID; scalar_t__ uxPriority; int xEventListItem; int xGenericListItem; } ;
typedef TYPE_1__ TCB_t ;
typedef int List_t ;
typedef scalar_t__ BaseType_t ;


 int configASSERT (TYPE_1__*) ;
 scalar_t__ listGET_OWNER_OF_HEAD_ENTRY (int const* const) ;
 scalar_t__ listLIST_IS_EMPTY (int const* const) ;
 scalar_t__ pdFALSE ;
 scalar_t__ pdTRUE ;
 size_t portNUM_PROCESSORS ;
 int prvAddTaskToReadyList (TYPE_1__*) ;
 int prvResetNextTaskUnblockTime () ;
 TYPE_2__** pxCurrentTCB ;
 int taskENTER_CRITICAL_ISR (int *) ;
 int taskEXIT_CRITICAL_ISR (int *) ;
 int taskYIELD_OTHER_CORE (size_t,scalar_t__) ;
 scalar_t__ tskCAN_RUN_HERE (size_t) ;
 size_t tskNO_AFFINITY ;
 int uxListRemove (int *) ;
 size_t* uxSchedulerSuspended ;
 int vListInsertEnd (int *,int *) ;
 int * xPendingReadyList ;
 size_t xPortGetCoreID () ;
 int xTaskQueueMutex ;
 scalar_t__* xYieldPending ;

BaseType_t xTaskRemoveFromEventList( const List_t * const pxEventList )
{
TCB_t *pxUnblockedTCB;
BaseType_t xReturn;
BaseType_t xTaskCanBeReady;
UBaseType_t i, uxTargetCPU;



 taskENTER_CRITICAL_ISR(&xTaskQueueMutex);
 if ( ( listLIST_IS_EMPTY( pxEventList ) ) == pdFALSE ) {
  pxUnblockedTCB = ( TCB_t * ) listGET_OWNER_OF_HEAD_ENTRY( pxEventList );
  configASSERT( pxUnblockedTCB );
  ( void ) uxListRemove( &( pxUnblockedTCB->xEventListItem ) );
 } else {
  taskEXIT_CRITICAL_ISR(&xTaskQueueMutex);
  return pdFALSE;
 }



 xTaskCanBeReady = pdFALSE;
 if ( pxUnblockedTCB->xCoreID == tskNO_AFFINITY ) {
  uxTargetCPU = xPortGetCoreID();
  for (i = 0; i < portNUM_PROCESSORS; i++) {
   if ( uxSchedulerSuspended[ i ] == ( UBaseType_t ) pdFALSE ) {
    xTaskCanBeReady = pdTRUE;
    break;
   }
  }
 } else {
  uxTargetCPU = pxUnblockedTCB->xCoreID;
  xTaskCanBeReady = uxSchedulerSuspended[ uxTargetCPU ] == ( UBaseType_t ) pdFALSE;

 }

 if( xTaskCanBeReady )
 {
  ( void ) uxListRemove( &( pxUnblockedTCB->xGenericListItem ) );
  prvAddTaskToReadyList( pxUnblockedTCB );
 }
 else
 {


  vListInsertEnd( &( xPendingReadyList[ uxTargetCPU ] ), &( pxUnblockedTCB->xEventListItem ) );
 }

 if ( tskCAN_RUN_HERE(pxUnblockedTCB->xCoreID) && pxUnblockedTCB->uxPriority >= pxCurrentTCB[ xPortGetCoreID() ]->uxPriority )
 {



  xReturn = pdTRUE;



  xYieldPending[ xPortGetCoreID() ] = pdTRUE;
 }
 else if ( pxUnblockedTCB->xCoreID != xPortGetCoreID() )
 {
  taskYIELD_OTHER_CORE( pxUnblockedTCB->xCoreID, pxUnblockedTCB->uxPriority );
  xReturn = pdFALSE;
 }
 else
 {
  xReturn = pdFALSE;
 }
 taskEXIT_CRITICAL_ISR(&xTaskQueueMutex);

 return xReturn;
}
