
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_10__ {int quadwp_io_num; int quadhd_io_num; int sclk_io_num; int miso_io_num; int mosi_io_num; } ;
typedef TYPE_1__ spi_bus_config_t ;
struct TYPE_11__ {int size; } ;
typedef TYPE_2__ esp_flash_t ;
struct TYPE_12__ {int cs_io_num; int speed; int io_mode; int cs_id; int host_id; } ;
typedef TYPE_3__ esp_flash_spi_device_config_t ;
typedef scalar_t__ esp_err_t ;


 int ESP_ERROR_CHECK (int ) ;
 int ESP_FLASH_40MHZ ;
 int ESP_LOGE (int ,char*,int ,scalar_t__) ;
 int ESP_LOGI (int ,char*,...) ;
 scalar_t__ ESP_OK ;
 int SPI_FLASH_DIO ;
 int TAG ;
 int VSPI_HOST ;
 int VSPI_IOMUX_PIN_NUM_CLK ;
 int VSPI_IOMUX_PIN_NUM_CS ;
 int VSPI_IOMUX_PIN_NUM_MISO ;
 int VSPI_IOMUX_PIN_NUM_MOSI ;
 int esp_err_to_name (scalar_t__) ;
 scalar_t__ esp_flash_init (TYPE_2__*) ;
 int esp_flash_read_id (TYPE_2__*,int *) ;
 int spi_bus_add_flash_device (TYPE_2__**,TYPE_3__ const*) ;
 int spi_bus_initialize (int ,TYPE_1__ const*,int) ;

__attribute__((used)) static esp_flash_t* example_init_ext_flash(void)
{
    const spi_bus_config_t bus_config = {
        .mosi_io_num = VSPI_IOMUX_PIN_NUM_MOSI,
        .miso_io_num = VSPI_IOMUX_PIN_NUM_MISO,
        .sclk_io_num = VSPI_IOMUX_PIN_NUM_CLK,
        .quadwp_io_num = -1,
        .quadhd_io_num = -1,
    };

    const esp_flash_spi_device_config_t device_config = {
        .host_id = VSPI_HOST,
        .cs_id = 0,
        .cs_io_num = VSPI_IOMUX_PIN_NUM_CS,
        .io_mode = SPI_FLASH_DIO,
        .speed = ESP_FLASH_40MHZ
    };

    ESP_LOGI(TAG, "Initializing external SPI Flash");
    ESP_LOGI(TAG, "Pin assignments:");
    ESP_LOGI(TAG, "MOSI: %2d   MISO: %2d   SCLK: %2d   CS: %2d",
        bus_config.mosi_io_num, bus_config.miso_io_num,
        bus_config.sclk_io_num, device_config.cs_io_num
    );


    ESP_ERROR_CHECK(spi_bus_initialize(VSPI_HOST, &bus_config, 1));


    esp_flash_t* ext_flash;
    ESP_ERROR_CHECK(spi_bus_add_flash_device(&ext_flash, &device_config));


    esp_err_t err = esp_flash_init(ext_flash);
    if (err != ESP_OK) {
        ESP_LOGE(TAG, "Failed to initialize external Flash: %s (0x%x)", esp_err_to_name(err), err);
        return ((void*)0);
    }


    uint32_t id;
    ESP_ERROR_CHECK(esp_flash_read_id(ext_flash, &id));
    ESP_LOGI(TAG, "Initialized external Flash, size=%d KB, ID=0x%x", ext_flash->size / 1024, id);

    return ext_flash;
}
