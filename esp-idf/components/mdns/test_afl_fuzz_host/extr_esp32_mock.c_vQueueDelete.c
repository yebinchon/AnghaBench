
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int QueueHandle_t ;


 int free (int ) ;

void vQueueDelete( QueueHandle_t xQueue )
{
    free(xQueue);
}
