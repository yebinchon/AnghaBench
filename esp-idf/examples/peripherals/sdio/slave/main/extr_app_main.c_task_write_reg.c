
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int esp_err_t ;


 int ESP_LOGI (int ,char*) ;
 int ESP_LOG_BUFFER_HEXDUMP (int ,scalar_t__*,int,int ) ;
 int ESP_LOG_INFO ;
 int ESP_OK ;
 int TAG ;
 scalar_t__ sdio_slave_read_reg (int) ;
 int sdio_slave_write_reg (int,scalar_t__) ;

__attribute__((used)) static esp_err_t task_write_reg(void)
{

    uint8_t read = sdio_slave_read_reg(1);
    for (int i = 0; i < 64; i++) {

        if (i >= 28 && i <= 31) continue;
        sdio_slave_write_reg(i, read+3*i);
    }
    uint8_t reg[64] = {0};
    for (int i = 0; i < 64; i++) {

        if (i >= 28 && i <= 31) continue;
        reg[i] = sdio_slave_read_reg(i);
    }
    ESP_LOGI(TAG, "write regs:");
    ESP_LOG_BUFFER_HEXDUMP(TAG, reg, 64, ESP_LOG_INFO);
    return ESP_OK;
}
