
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int slave_context; scalar_t__ handle_slave; } ;
typedef TYPE_1__ spitest_context_t ;


 int deinit_slave_context (int *) ;
 int vTaskDelete (scalar_t__) ;

__attribute__((used)) static void test_slave_deinit(void* arg)
{
    spitest_context_t* context = (spitest_context_t*)arg;
    vTaskDelete( context->handle_slave );
    context->handle_slave = 0;

    deinit_slave_context(&context->slave_context);
}
