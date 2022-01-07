
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int t ;
struct TYPE_4__ {int length; scalar_t__ rx_data; void* user; int flags; } ;
typedef TYPE_1__ spi_transaction_t ;
typedef int spi_device_handle_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_OK ;
 int SPI_TRANS_USE_RXDATA ;
 int assert (int) ;
 int lcd_cmd (int ,int) ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ spi_device_polling_transmit (int ,TYPE_1__*) ;

uint32_t lcd_get_id(spi_device_handle_t spi)
{

    lcd_cmd(spi, 0x04);

    spi_transaction_t t;
    memset(&t, 0, sizeof(t));
    t.length=8*3;
    t.flags = SPI_TRANS_USE_RXDATA;
    t.user = (void*)1;

    esp_err_t ret = spi_device_polling_transmit(spi, &t);
    assert( ret == ESP_OK );

    return *(uint32_t*)t.rx_data;
}
