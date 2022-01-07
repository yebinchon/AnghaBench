
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int gpio_int; int gpio_cs; int gpio_sck; int gpio_mosi; int gpio_miso; } ;
typedef TYPE_1__ sdspi_slot_config_t ;
typedef int sdmmc_slot_config_t ;
struct TYPE_9__ {int max_freq_khz; int flags; } ;
typedef TYPE_2__ sdmmc_host_t ;
typedef int sdmmc_card_t ;
typedef int esp_slave_context_t ;
typedef int esp_err_t ;


 int ESP_ERROR_CHECK (int ) ;
 int ESP_ERR_NO_MEM ;
 int ESP_LOGI (int ,char*) ;
 int ESP_LOGW (int ,char*) ;
 scalar_t__ ESP_OK ;
 int ESP_SLAVE_DEFAULT_CONTEXT (int *) ;
 int HSPI_HOST ;
 int SDIO_SLAVE_SLOT1_IOMUX_PIN_NUM_CLK ;
 int SDIO_SLAVE_SLOT1_IOMUX_PIN_NUM_CMD ;
 int SDIO_SLAVE_SLOT1_IOMUX_PIN_NUM_D0 ;
 int SDIO_SLAVE_SLOT1_IOMUX_PIN_NUM_D1 ;
 int SDIO_SLAVE_SLOT1_IOMUX_PIN_NUM_D3 ;
 int SDMMC_FREQ_DEFAULT ;
 int SDMMC_FREQ_HIGHSPEED ;
 TYPE_2__ SDMMC_HOST_DEFAULT () ;
 int SDMMC_HOST_FLAG_1BIT ;
 int SDMMC_HOST_FLAG_4BIT ;
 int SDMMC_HOST_SLOT_1 ;
 int SDMMC_SLOT_CONFIG_DEFAULT () ;
 TYPE_2__ SDSPI_HOST_DEFAULT () ;
 TYPE_1__ SDSPI_SLOT_CONFIG_DEFAULT () ;
 int TAG ;
 int esp_slave_init_io (int *) ;
 int gpio_d2_set_high () ;
 int gpio_install_isr_service (int ) ;
 int gpio_pulldown_dis (int) ;
 int gpio_pullup_en (int) ;
 scalar_t__ malloc (int) ;
 int portTICK_PERIOD_MS ;
 int print_sdio_cis_information (int *) ;
 scalar_t__ sdmmc_card_init (TYPE_2__*,int *) ;
 int sdmmc_card_print_info (int ,int *) ;
 int sdmmc_host_init () ;
 int sdmmc_host_init_slot (int ,int *) ;
 int sdspi_host_init () ;
 int sdspi_host_init_slot (int ,TYPE_1__*) ;
 int stdout ;
 int vTaskDelay (int) ;

esp_err_t slave_init(esp_slave_context_t *context)
{
    esp_err_t err;


    sdmmc_host_t config = SDMMC_HOST_DEFAULT();




    ESP_LOGI(TAG, "Probe using SD 1-bit...\n");
    config.flags = SDMMC_HOST_FLAG_1BIT;





    config.max_freq_khz = SDMMC_FREQ_DEFAULT;


    sdmmc_slot_config_t slot_config = SDMMC_SLOT_CONFIG_DEFAULT();







    err = sdmmc_host_init();
    ESP_ERROR_CHECK(err);

    err = sdmmc_host_init_slot(SDMMC_HOST_SLOT_1, &slot_config);
    ESP_ERROR_CHECK(err);
    sdmmc_card_t *card = (sdmmc_card_t *)malloc(sizeof(sdmmc_card_t));
    if (card == ((void*)0)) {
        return ESP_ERR_NO_MEM;
    }
    for (;;) {
        if (sdmmc_card_init(&config, card) == ESP_OK) {
            break;
        }
        ESP_LOGW(TAG, "slave init failed, retry...");
        vTaskDelay(1000 / portTICK_PERIOD_MS);
    }
    sdmmc_card_print_info(stdout, card);

    gpio_pullup_en(14);
    gpio_pulldown_dis(14);
    gpio_pullup_en(15);
    gpio_pulldown_dis(15);
    gpio_pullup_en(2);
    gpio_pulldown_dis(2);
    gpio_pullup_en(4);
    gpio_pulldown_dis(4);
    gpio_pullup_en(12);
    gpio_pulldown_dis(12);
    gpio_pullup_en(13);
    gpio_pulldown_dis(13);

    *context = ESP_SLAVE_DEFAULT_CONTEXT(card);
    esp_err_t ret = esp_slave_init_io(context);
    ESP_ERROR_CHECK(ret);

    ret = print_sdio_cis_information(card);
    ESP_ERROR_CHECK(ret);
    return ret;
}
