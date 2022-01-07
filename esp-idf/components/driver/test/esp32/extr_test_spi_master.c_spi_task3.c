
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int finished; int handle; } ;
typedef TYPE_1__ task_context_t ;
struct TYPE_7__ {int length; int tx_data; int flags; } ;
typedef TYPE_2__ spi_transaction_t ;
typedef int spi_device_handle_t ;


 int ESP_LOGI (int ,char*,...) ;
 int SPI_TRANS_USE_TXDATA ;
 int TAG ;
 int TEST_ESP_OK (int ) ;
 int assert (int) ;
 int portMAX_DELAY ;
 int spi_device_acquire_bus (int ,int ) ;
 int spi_device_get_trans_result (int ,TYPE_2__**,int ) ;
 int spi_device_polling_transmit (int ,TYPE_2__*) ;
 int spi_device_queue_trans (int ,TYPE_2__*,int ) ;
 int spi_device_release_bus (int ) ;
 int vTaskDelete (int *) ;

void spi_task3(void* arg)
{

    int count=0;
    spi_transaction_t t = {
        .flags = SPI_TRANS_USE_TXDATA,
        .tx_data = { 0x80, 0x12, 0x34, 0x56 },
        .length = 4*8,
    };
    spi_transaction_t *ret_t;
    spi_device_handle_t handle = ((task_context_t*)arg)->handle;

    for (int i = 0; i < 30; i ++) {
        TEST_ESP_OK(spi_device_polling_transmit(handle, &t));
        ESP_LOGI( TAG, "task3: %d", count++ );
    }

    TEST_ESP_OK(spi_device_acquire_bus( handle, portMAX_DELAY ));
    for (int i = 0; i < 20; i ++) {
        TEST_ESP_OK(spi_device_polling_transmit(handle, &t));
        ESP_LOGI( TAG, "task3: %d", count++ );
    }

    for (int j = 0; j < 50; j++) {
        TEST_ESP_OK(spi_device_queue_trans(handle, &t, portMAX_DELAY));
    }
    for (int j = 0; j < 50; j++) {
        TEST_ESP_OK(spi_device_get_trans_result(handle, &ret_t, portMAX_DELAY));
        assert(ret_t == &t);
        ESP_LOGI(TAG, "task3: %d", count++);
    }
    spi_device_release_bus(handle);

    ESP_LOGI(TAG, "task3 terminates");
    ((task_context_t*)arg)->finished = 1;
    vTaskDelete(((void*)0));
}
