
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int queue_size; int flags; int spics_io_num; int mode; } ;
typedef TYPE_1__ spi_slave_interface_config_t ;
struct TYPE_6__ {int sclk_io_num; int miso_io_num; int mosi_io_num; } ;
typedef TYPE_2__ spi_bus_config_t ;


 int GPIO_PULLUP_ONLY ;
 int PIN_NUM_CLK ;
 int PIN_NUM_CS ;
 int PIN_NUM_MISO ;
 int PIN_NUM_MOSI ;
 int TEST_ESP_OK (int ) ;
 int TEST_SLAVE_HOST ;
 int gpio_set_pull_mode (int ,int ) ;
 int spi_slave_initialize (int ,TYPE_2__*,TYPE_1__*,int) ;

__attribute__((used)) static void slave_init(void)
{

    spi_bus_config_t buscfg={
        .mosi_io_num=PIN_NUM_MOSI,
        .miso_io_num=PIN_NUM_MISO,
        .sclk_io_num=PIN_NUM_CLK
    };

    spi_slave_interface_config_t slvcfg={
        .mode=0,
        .spics_io_num=PIN_NUM_CS,
        .queue_size=3,
        .flags=0,
    };

    gpio_set_pull_mode(PIN_NUM_MOSI, GPIO_PULLUP_ONLY);
    gpio_set_pull_mode(PIN_NUM_CLK, GPIO_PULLUP_ONLY);
    gpio_set_pull_mode(PIN_NUM_CS, GPIO_PULLUP_ONLY);

    TEST_ESP_OK( spi_slave_initialize(TEST_SLAVE_HOST, &buscfg, &slvcfg, 2) );
}
