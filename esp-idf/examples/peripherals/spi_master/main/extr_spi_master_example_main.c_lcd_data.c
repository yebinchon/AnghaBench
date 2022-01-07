
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int t ;
struct TYPE_4__ {int length; void* user; int const* tx_buffer; } ;
typedef TYPE_1__ spi_transaction_t ;
typedef int spi_device_handle_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_OK ;
 int assert (int) ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ spi_device_polling_transmit (int ,TYPE_1__*) ;

void lcd_data(spi_device_handle_t spi, const uint8_t *data, int len)
{
    esp_err_t ret;
    spi_transaction_t t;
    if (len==0) return;
    memset(&t, 0, sizeof(t));
    t.length=len*8;
    t.tx_buffer=data;
    t.user=(void*)1;
    ret=spi_device_polling_transmit(spi, &t);
    assert(ret==ESP_OK);
}
