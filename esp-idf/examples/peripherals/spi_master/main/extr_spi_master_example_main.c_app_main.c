
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int clock_speed_hz; int queue_size; int pre_cb; int spics_io_num; int mode; } ;
typedef TYPE_1__ spi_device_interface_config_t ;
typedef int spi_device_handle_t ;
struct TYPE_6__ {int quadwp_io_num; int quadhd_io_num; int max_transfer_sz; int sclk_io_num; int mosi_io_num; int miso_io_num; } ;
typedef TYPE_2__ spi_bus_config_t ;
typedef int esp_err_t ;


 int DMA_CHAN ;
 int ESP_ERROR_CHECK (int ) ;
 int LCD_HOST ;
 int PARALLEL_LINES ;
 int PIN_NUM_CLK ;
 int PIN_NUM_CS ;
 int PIN_NUM_MISO ;
 int PIN_NUM_MOSI ;
 int display_pretty_colors (int ) ;
 int lcd_init (int ) ;
 int lcd_spi_pre_transfer_callback ;
 int pretty_effect_init () ;
 int spi_bus_add_device (int ,TYPE_1__*,int *) ;
 int spi_bus_initialize (int ,TYPE_2__*,int ) ;

void app_main(void)
{
    esp_err_t ret;
    spi_device_handle_t spi;
    spi_bus_config_t buscfg={
        .miso_io_num=PIN_NUM_MISO,
        .mosi_io_num=PIN_NUM_MOSI,
        .sclk_io_num=PIN_NUM_CLK,
        .quadwp_io_num=-1,
        .quadhd_io_num=-1,
        .max_transfer_sz=PARALLEL_LINES*320*2+8
    };
    spi_device_interface_config_t devcfg={



        .clock_speed_hz=10*1000*1000,

        .mode=0,
        .spics_io_num=PIN_NUM_CS,
        .queue_size=7,
        .pre_cb=lcd_spi_pre_transfer_callback,
    };

    ret=spi_bus_initialize(LCD_HOST, &buscfg, DMA_CHAN);
    ESP_ERROR_CHECK(ret);

    ret=spi_bus_add_device(LCD_HOST, &devcfg, &spi);
    ESP_ERROR_CHECK(ret);

    lcd_init(spi);

    ret=pretty_effect_init();
    ESP_ERROR_CHECK(ret);


    display_pretty_colors(spi);
}
