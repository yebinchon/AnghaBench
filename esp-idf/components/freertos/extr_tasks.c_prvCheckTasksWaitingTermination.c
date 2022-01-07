
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UBaseType_t ;
struct TYPE_5__ {int xCoreID; } ;
typedef TYPE_1__ TCB_t ;
typedef int ListItem_t ;
typedef scalar_t__ BaseType_t ;


 int * listGET_END_MARKER (int *) ;
 int * listGET_HEAD_ENTRY (int *) ;
 scalar_t__ listGET_LIST_ITEM_OWNER (int *) ;
 int * listGET_NEXT (int *) ;
 scalar_t__ listLIST_IS_EMPTY (int *) ;
 int mtCOVERAGE_TEST_MARKER () ;
 scalar_t__ pdFALSE ;
 int portNUM_PROCESSORS ;
 int prvDeleteTCB (TYPE_1__*) ;
 int prvDeleteTLS (TYPE_1__*) ;
 TYPE_1__** pxCurrentTCB ;
 int taskENTER_CRITICAL (int *) ;
 int taskEXIT_CRITICAL (int *) ;
 int tskNO_AFFINITY ;
 int uxCurrentNumberOfTasks ;
 int uxListRemove (int *) ;
 scalar_t__ uxTasksDeleted ;
 int xPortGetCoreID () ;
 int xTaskQueueMutex ;
 int xTasksWaitingTermination ;

__attribute__((used)) static void prvCheckTasksWaitingTermination( void )
{
}
