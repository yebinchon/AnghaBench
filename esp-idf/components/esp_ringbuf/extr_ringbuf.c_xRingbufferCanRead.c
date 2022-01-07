
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Ringbuffer_t ;
typedef scalar_t__ RingbufHandle_t ;
typedef scalar_t__ QueueSetMemberHandle_t ;
typedef int BaseType_t ;


 int configASSERT (int *) ;
 int pdFALSE ;
 int pdTRUE ;
 scalar_t__ rbGET_RX_SEM_HANDLE (int *) ;

BaseType_t xRingbufferCanRead(RingbufHandle_t xRingbuffer, QueueSetMemberHandle_t xMember)
{

    Ringbuffer_t *pxRingbuffer = (Ringbuffer_t *)xRingbuffer;
    configASSERT(pxRingbuffer);
    return (rbGET_RX_SEM_HANDLE(pxRingbuffer) == xMember) ? pdTRUE : pdFALSE;
}
