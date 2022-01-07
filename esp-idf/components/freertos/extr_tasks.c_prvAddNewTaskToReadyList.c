
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UBaseType_t ;
typedef int TaskFunction_t ;
struct TYPE_7__ {scalar_t__ uxPriority; scalar_t__ uxTCBNumber; } ;
typedef TYPE_1__ TCB_t ;
typedef int BaseType_t ;


 int configASSERT (int) ;
 int mtCOVERAGE_TEST_MARKER () ;
 scalar_t__ pdFALSE ;
 int portNUM_PROCESSORS ;
 int portSETUP_TCB (TYPE_1__*) ;
 int prvAddTaskToReadyList (TYPE_1__*) ;
 int prvInitialiseTaskLists () ;
 TYPE_1__** pxCurrentTCB ;
 int taskENTER_CRITICAL (int *) ;
 int taskEXIT_CRITICAL (int *) ;
 int taskYIELD_IF_USING_PREEMPTION () ;
 int taskYIELD_OTHER_CORE (int,scalar_t__) ;
 int traceTASK_CREATE (TYPE_1__*) ;
 int tskNO_AFFINITY ;
 scalar_t__ uxCurrentNumberOfTasks ;
 scalar_t__ uxTaskNumber ;
 int vPortFirstTaskHook (int ) ;
 int xPortGetCoreID () ;
 scalar_t__ xSchedulerRunning ;
 int xTaskQueueMutex ;

__attribute__((used)) static void prvAddNewTaskToReadyList( TCB_t *pxNewTCB, TaskFunction_t pxTaskCode, BaseType_t xCoreID )
{
 TCB_t *curTCB, *tcb0, *tcb1;




 configASSERT( xCoreID == tskNO_AFFINITY || xCoreID < portNUM_PROCESSORS);



 taskENTER_CRITICAL(&xTaskQueueMutex);
 {
  uxCurrentNumberOfTasks++;


  if ( xCoreID == tskNO_AFFINITY )
  {
   if ( portNUM_PROCESSORS == 1 )
   {
    xCoreID = 0;
   }
   else
   {



    tcb0 = pxCurrentTCB[0];
    tcb1 = pxCurrentTCB[1];
    if ( tcb0 == ((void*)0) )
    {
     xCoreID = 0;
    }
    else if ( tcb1 == ((void*)0) )
    {
     xCoreID = 1;
    }
    else if ( tcb0->uxPriority < pxNewTCB->uxPriority && tcb0->uxPriority < tcb1->uxPriority )
    {
     xCoreID = 0;
    }
    else if ( tcb1->uxPriority < pxNewTCB->uxPriority )
    {
     xCoreID = 1;
    }
    else
    {
     xCoreID = xPortGetCoreID();
    }
   }
  }


  if( pxCurrentTCB[ xCoreID ] == ((void*)0) )
  {


   pxCurrentTCB[ xCoreID ] = pxNewTCB;

   if( uxCurrentNumberOfTasks == ( UBaseType_t ) 1 )
   {
    prvInitialiseTaskLists();
   }
   else
   {
    mtCOVERAGE_TEST_MARKER();
   }
  }
  else
  {



   if( xSchedulerRunning == pdFALSE )
   {


    if ( pxCurrentTCB[xCoreID] == ((void*)0) || pxCurrentTCB[xCoreID]->uxPriority <= pxNewTCB->uxPriority )
    {
     pxCurrentTCB[xCoreID] = pxNewTCB;
    }
   }
   else
   {
    mtCOVERAGE_TEST_MARKER();
   }
  }

  uxTaskNumber++;







  traceTASK_CREATE( pxNewTCB );

  prvAddTaskToReadyList( pxNewTCB );

  portSETUP_TCB( pxNewTCB );
 }

 taskEXIT_CRITICAL(&xTaskQueueMutex);

 if( xSchedulerRunning != pdFALSE )
 {
  taskENTER_CRITICAL(&xTaskQueueMutex);

  curTCB = pxCurrentTCB[ xCoreID ];



  if( curTCB == ((void*)0) || curTCB->uxPriority < pxNewTCB->uxPriority )
  {
   if( xCoreID == xPortGetCoreID() )
   {
    taskYIELD_IF_USING_PREEMPTION();
   }
   else {
    taskYIELD_OTHER_CORE(xCoreID, pxNewTCB->uxPriority);
   }
  }
  else
  {
   mtCOVERAGE_TEST_MARKER();
  }
  taskEXIT_CRITICAL(&xTaskQueueMutex);
 }
 else
 {
  mtCOVERAGE_TEST_MARKER();
 }
}
