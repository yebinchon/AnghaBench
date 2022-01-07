
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UBaseType_t ;
struct TYPE_5__ {scalar_t__ uxPriority; } ;
struct TYPE_4__ {scalar_t__ uxPriority; int xCoreID; int xGenericListItem; int xEventListItem; } ;
typedef TYPE_1__ TCB_t ;
typedef scalar_t__ BaseType_t ;


 int configASSERT (int) ;
 scalar_t__ listGET_OWNER_OF_HEAD_ENTRY (int *) ;
 scalar_t__ listLIST_IS_EMPTY (int *) ;
 int mtCOVERAGE_TEST_MARKER () ;
 scalar_t__ pdFALSE ;
 scalar_t__ pdTRUE ;
 int prvAddTaskToReadyList (TYPE_1__*) ;
 TYPE_2__** pxCurrentTCB ;
 int taskENTER_CRITICAL (int *) ;
 int taskEXIT_CRITICAL (int *) ;
 scalar_t__ taskSCHEDULER_RUNNING ;
 int taskYIELD_IF_USING_PREEMPTION () ;
 scalar_t__ tskCAN_RUN_HERE (int ) ;
 scalar_t__ uxCurrentNumberOfTasks ;
 int uxListRemove (int *) ;
 scalar_t__ uxPendedTicks ;
 scalar_t__* uxSchedulerSuspended ;
 int * xPendingReadyList ;
 size_t xPortGetCoreID () ;
 scalar_t__ xTaskGetSchedulerState () ;
 scalar_t__ xTaskIncrementTick () ;
 int xTaskQueueMutex ;
 scalar_t__* xYieldPending ;

BaseType_t xTaskResumeAll( void )
{
TCB_t *pxTCB;
BaseType_t xAlreadyYielded = pdFALSE;



 configASSERT( xTaskGetSchedulerState() != taskSCHEDULER_RUNNING );






 taskENTER_CRITICAL(&xTaskQueueMutex);
 {
  --uxSchedulerSuspended[ xPortGetCoreID() ];

  if( uxSchedulerSuspended[ xPortGetCoreID() ] == ( UBaseType_t ) pdFALSE )
  {
   if( uxCurrentNumberOfTasks > ( UBaseType_t ) 0U )
   {


    while( listLIST_IS_EMPTY( &xPendingReadyList[ xPortGetCoreID() ] ) == pdFALSE )
    {
     pxTCB = ( TCB_t * ) listGET_OWNER_OF_HEAD_ENTRY( ( &xPendingReadyList[ xPortGetCoreID() ] ) );
     ( void ) uxListRemove( &( pxTCB->xEventListItem ) );
     ( void ) uxListRemove( &( pxTCB->xGenericListItem ) );
     prvAddTaskToReadyList( pxTCB );



     if ( tskCAN_RUN_HERE(pxTCB->xCoreID) && pxTCB->uxPriority >= pxCurrentTCB[ xPortGetCoreID() ]->uxPriority )
     {

      xYieldPending[xPortGetCoreID()] = pdTRUE;
     }
     else
     {
      mtCOVERAGE_TEST_MARKER();
     }
    }





    if( uxPendedTicks > ( UBaseType_t ) 0U )
    {
     while( uxPendedTicks > ( UBaseType_t ) 0U )
     {
      if( xTaskIncrementTick() != pdFALSE )
      {
       xYieldPending[ xPortGetCoreID() ] = pdTRUE;
      }
      else
      {
       mtCOVERAGE_TEST_MARKER();
      }
      --uxPendedTicks;
     }
    }
    else
    {
     mtCOVERAGE_TEST_MARKER();
    }

    if( xYieldPending[ xPortGetCoreID() ] == pdTRUE )
    {





     taskYIELD_IF_USING_PREEMPTION();
    }
    else
    {
     mtCOVERAGE_TEST_MARKER();
    }
   }
  }
  else
  {
   mtCOVERAGE_TEST_MARKER();
  }
 }
 taskEXIT_CRITICAL(&xTaskQueueMutex);

 return xAlreadyYielded;
}
