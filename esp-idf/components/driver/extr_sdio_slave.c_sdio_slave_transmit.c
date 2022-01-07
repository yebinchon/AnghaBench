
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ esp_err_t ;


 int ESP_ERR_INVALID_STATE ;
 scalar_t__ ESP_OK ;
 int SDIO_SLAVE_CHECK (int,char*,int ) ;
 scalar_t__ XTHAL_GET_CCOUNT () ;
 int portMAX_DELAY ;
 scalar_t__ sdio_slave_send_get_finished (void**,int ) ;
 scalar_t__ sdio_slave_send_queue (int *,size_t,void*,int ) ;

esp_err_t sdio_slave_transmit(uint8_t* addr, size_t len)
{
    uint32_t timestamp = XTHAL_GET_CCOUNT();
    uint32_t ret_stamp;

    esp_err_t err = sdio_slave_send_queue(addr, len, (void*)timestamp, portMAX_DELAY);
    if (err != ESP_OK) return err;
    err = sdio_slave_send_get_finished((void**)&ret_stamp, portMAX_DELAY);
    if (err != ESP_OK) return err;
    SDIO_SLAVE_CHECK(ret_stamp == timestamp, "already sent without return before", ESP_ERR_INVALID_STATE);

    return ESP_OK;
}
