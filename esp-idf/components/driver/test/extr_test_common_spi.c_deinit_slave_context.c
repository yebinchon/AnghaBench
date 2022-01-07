
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * data_received; int * data_to_send; } ;
typedef TYPE_1__ spi_slave_task_context_t ;


 int TEST_ASSERT (int ) ;
 int vQueueDelete (int *) ;
 int vRingbufferDelete (int *) ;

void deinit_slave_context(spi_slave_task_context_t *context)
{
    TEST_ASSERT( context->data_to_send != ((void*)0) );
    vQueueDelete( context->data_to_send );
    context->data_to_send = ((void*)0);
    TEST_ASSERT( context->data_received != ((void*)0) );
    vRingbufferDelete( context->data_received );
    context->data_received = ((void*)0);
}
