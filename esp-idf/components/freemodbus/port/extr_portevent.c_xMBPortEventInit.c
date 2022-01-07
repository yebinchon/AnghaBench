
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int eMBEventType ;
typedef int BOOL ;


 int FALSE ;
 int MB_EVENT_QUEUE_SIZE ;
 int TRUE ;
 int vQueueAddToRegistry (int *,char*) ;
 int * xQueueCreate (int ,int) ;
 int * xQueueHdl ;

BOOL
xMBPortEventInit( void )
{
    BOOL bStatus = FALSE;
    if((xQueueHdl = xQueueCreate(MB_EVENT_QUEUE_SIZE, sizeof(eMBEventType))) != ((void*)0))
    {
        vQueueAddToRegistry(xQueueHdl, "MbPortEventQueue");
        bStatus = TRUE;
    }
    return bStatus;
}
