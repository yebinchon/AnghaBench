
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int length; int * rx_buffer; int * tx_buffer; } ;
typedef TYPE_1__ spi_transaction_t ;
typedef int data ;


 int memset (int *,int,int) ;
 int spi_device_transmit (int ,TYPE_1__*) ;
 int spi_handle (int) ;

__attribute__((used)) static void go_idle_clockout(int slot)
{

    uint8_t data[12];
    memset(data, 0xff, sizeof(data));
    spi_transaction_t t = {
        .length = 10*8,
        .tx_buffer = data,
        .rx_buffer = data,
    };
    spi_device_transmit(spi_handle(slot), &t);

}
