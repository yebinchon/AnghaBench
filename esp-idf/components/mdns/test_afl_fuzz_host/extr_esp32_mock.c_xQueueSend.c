
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int TickType_t ;
typedef int QueueHandle_t ;


 scalar_t__ g_queue_send_shall_fail ;
 int g_size ;
 int memcpy (int ,void const*,int ) ;
 int pdFALSE ;
 int pdPASS ;

uint32_t xQueueSend(QueueHandle_t xQueue, const void * pvItemToQueue, TickType_t xTicksToWait)
{
    if (g_queue_send_shall_fail)
    {
        return pdFALSE;
    }
    else
    {
        memcpy(xQueue, pvItemToQueue, g_size);
        return pdPASS;
    }
}
