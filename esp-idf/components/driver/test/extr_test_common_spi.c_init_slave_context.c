
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int spi; int * data_received; int * data_to_send; } ;
typedef TYPE_1__ spi_slave_task_context_t ;
typedef int slave_txdata_t ;
typedef int esp_err_t ;


 int ESP_ERR_NO_MEM ;
 int ESP_OK ;
 int RINGBUF_TYPE_NOSPLIT ;
 int TEST_SLAVE_HOST ;
 int * xQueueCreate (int,int) ;
 int * xRingbufferCreate (int,int ) ;

esp_err_t init_slave_context(spi_slave_task_context_t *context)
{
    context->data_to_send = xQueueCreate( 16, sizeof( slave_txdata_t ));
    if ( context->data_to_send == ((void*)0) ) {
        return ESP_ERR_NO_MEM;
    }
    context->data_received = xRingbufferCreate( 1024, RINGBUF_TYPE_NOSPLIT );
    if ( context->data_received == ((void*)0) ) {
        return ESP_ERR_NO_MEM;
    }
    context->spi=TEST_SLAVE_HOST;
    return ESP_OK;
}
