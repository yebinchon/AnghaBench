
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int clock_speed_hz; int queue_size; int cs_ena_posttrans; int cs_ena_pretrans; int * pre_cb; int spics_io_num; int mode; } ;
typedef TYPE_1__ spi_device_interface_config_t ;
typedef int spi_device_handle_t ;
struct TYPE_6__ {int quadwp_io_num; int quadhd_io_num; int sclk_io_num; int mosi_io_num; int miso_io_num; } ;
typedef TYPE_2__ spi_bus_config_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_OK ;
 int PIN_NUM_CLK ;
 int PIN_NUM_CS ;
 int PIN_NUM_MISO ;
 int PIN_NUM_MOSI ;
 int TEST_ASSERT (int) ;
 int TEST_SPI_HOST ;
 scalar_t__ spi_bus_add_device (int ,TYPE_1__*,int *) ;
 scalar_t__ spi_bus_initialize (int ,TYPE_2__*,int ) ;

__attribute__((used)) static void master_init_nodma( spi_device_handle_t* spi)
{
    esp_err_t ret;
    spi_bus_config_t buscfg={
        .miso_io_num=PIN_NUM_MISO,
        .mosi_io_num=PIN_NUM_MOSI,
        .sclk_io_num=PIN_NUM_CLK,
        .quadwp_io_num=-1,
        .quadhd_io_num=-1
    };
    spi_device_interface_config_t devcfg={
        .clock_speed_hz=4*1000*1000,
        .mode=0,
        .spics_io_num=PIN_NUM_CS,
        .queue_size=7,
        .pre_cb=((void*)0),
        .cs_ena_posttrans=5,
        .cs_ena_pretrans=1,
    };

    ret=spi_bus_initialize(TEST_SPI_HOST, &buscfg, 0);
    TEST_ASSERT(ret==ESP_OK);

    ret=spi_bus_add_device(TEST_SPI_HOST, &devcfg, spi);
    TEST_ASSERT(ret==ESP_OK);
}
