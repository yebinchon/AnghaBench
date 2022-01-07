
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ spi_host_device_t ;
struct TYPE_3__ {int quadhd_io_num; int max_transfer_sz; int quadwp_io_num; int sclk_io_num; int miso_io_num; int mosi_io_num; } ;
typedef TYPE_1__ spi_bus_config_t ;
typedef int esp_err_t ;


 int ESP_LOGE (int ,char*) ;
 int ESP_LOGI (int ,char*) ;
 int EXTRA_SPI1_CLK_IO ;
 scalar_t__ HSPI_HOST ;
 int HSPI_PIN_NUM_CLK ;
 int HSPI_PIN_NUM_HD ;
 int HSPI_PIN_NUM_MISO ;
 int HSPI_PIN_NUM_MOSI ;
 int HSPI_PIN_NUM_WP ;
 int SPICLK_OUT_IDX ;
 scalar_t__ SPI_HOST ;
 int TAG ;
 int TEST_ESP_OK (int ) ;
 scalar_t__ VSPI_HOST ;
 int VSPI_PIN_NUM_CLK ;
 int VSPI_PIN_NUM_HD ;
 int VSPI_PIN_NUM_MISO ;
 int VSPI_PIN_NUM_MOSI ;
 int VSPI_PIN_NUM_WP ;
 int gpio_matrix_out (int ,int ,int ,int ) ;
 int spi_bus_initialize (scalar_t__,TYPE_1__*,int ) ;

__attribute__((used)) static void setup_bus(spi_host_device_t host_id)
{
    if (host_id == SPI_HOST) {
        ESP_LOGI(TAG, "setup flash on SPI1 CS1...\n");





    } else if (host_id == HSPI_HOST) {
        ESP_LOGI(TAG, "setup flash on SPI2 (HSPI) CS0...\n");
        spi_bus_config_t hspi_bus_cfg = {
            .mosi_io_num = HSPI_PIN_NUM_MOSI,
            .miso_io_num = HSPI_PIN_NUM_MISO,
            .sclk_io_num = HSPI_PIN_NUM_CLK,
            .quadhd_io_num = HSPI_PIN_NUM_HD,
            .quadwp_io_num = HSPI_PIN_NUM_WP,
            .max_transfer_sz = 64,
        };



        esp_err_t ret = spi_bus_initialize(host_id, &hspi_bus_cfg, 0);
        TEST_ESP_OK(ret);
    } else if (host_id == VSPI_HOST) {
        ESP_LOGI(TAG, "setup flash on SPI3 (VSPI) CS0...\n");
        spi_bus_config_t vspi_bus_cfg = {
            .mosi_io_num = VSPI_PIN_NUM_MOSI,
            .miso_io_num = VSPI_PIN_NUM_MISO,
            .sclk_io_num = VSPI_PIN_NUM_CLK,
            .quadhd_io_num = VSPI_PIN_NUM_HD,
            .quadwp_io_num = VSPI_PIN_NUM_WP,
            .max_transfer_sz = 64,
        };



        esp_err_t ret = spi_bus_initialize(host_id, &vspi_bus_cfg, 0);
        TEST_ESP_OK(ret);
    } else {
        ESP_LOGE(TAG, "invalid bus");
    }
}
