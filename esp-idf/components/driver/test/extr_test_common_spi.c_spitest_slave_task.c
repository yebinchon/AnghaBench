
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_6__ {int trans_len; int * rx_buffer; scalar_t__ tx_buffer; int length; } ;
typedef TYPE_1__ spi_slave_transaction_t ;
struct TYPE_7__ {int spi; int data_received; int data_to_send; } ;
typedef TYPE_2__ spi_slave_task_context_t ;
struct TYPE_8__ {scalar_t__ start; int len; } ;
typedef TYPE_3__ slave_txdata_t ;
typedef int RingbufHandle_t ;
typedef int QueueHandle_t ;
typedef int BaseType_t ;


 int ESP_LOGI (int ,char*,...) ;
 int SLAVE_TAG ;
 int TEST_ESP_OK (int ) ;
 int assert (int ) ;
 int memcpy (int *,int*,int) ;
 int portMAX_DELAY ;
 int spi_slave_transmit (int ,TYPE_1__*,int ) ;
 int xQueueReceive (int ,TYPE_3__*,int ) ;
 int xRingbufferSend (int ,int *,int,int ) ;

void spitest_slave_task(void* arg)
{
    spi_slave_task_context_t* context = (spi_slave_task_context_t*) arg;
    QueueHandle_t queue = context->data_to_send;
    RingbufHandle_t ringbuf = context->data_received;
    uint8_t recvbuf[320+8];
    slave_txdata_t txdata;

    ESP_LOGI( SLAVE_TAG, "slave up" );

    while( 1 ) {
        BaseType_t ret = xQueueReceive( queue, &txdata, portMAX_DELAY );
        assert(ret);

        spi_slave_transaction_t t = {};
        t.length = txdata.len;
        t.tx_buffer = txdata.start;
        t.rx_buffer = recvbuf+8;

        do {
            TEST_ESP_OK( spi_slave_transmit( context->spi, &t, portMAX_DELAY ) );
        } while ( t.trans_len <= 2 );
        memcpy(recvbuf, &t.trans_len, sizeof(uint32_t));
        *(uint8_t**)(recvbuf+4) = (uint8_t*)txdata.start;
        ESP_LOGI( SLAVE_TAG, "received: %d", t.trans_len );
        xRingbufferSend( ringbuf, recvbuf, 8+(t.trans_len+7)/8, portMAX_DELAY );
    }
}
