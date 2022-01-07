
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int width; int write_protect; int card_detect; int card_int; int d7_gpio; int d6_gpio; int d5_gpio; int d4_gpio; int d3_gpio; int d2_gpio; int d1_gpio; int d0_gpio; int cmd_gpio; int clk_gpio; } ;
typedef TYPE_1__ sdmmc_slot_info_t ;
struct TYPE_8__ {int flags; int width; int gpio_cd; int gpio_wp; } ;
typedef TYPE_2__ sdmmc_slot_config_t ;
struct TYPE_9__ {int intr_type; int pull_down_en; int pull_up_en; int mode; int pin_bit_mask; } ;
typedef TYPE_3__ gpio_config_t ;
typedef scalar_t__ esp_err_t ;


 int BIT (int ) ;
 scalar_t__ ESP_ERR_INVALID_ARG ;
 scalar_t__ ESP_ERR_INVALID_STATE ;
 int ESP_LOGD (int ,char*,int) ;
 scalar_t__ ESP_OK ;
 int GPIO_FUNC_IN_HIGH ;
 int GPIO_FUNC_IN_LOW ;
 int GPIO_INTR_DISABLE ;
 int GPIO_MODE_INPUT ;
 int GPIO_MODE_OUTPUT ;
 int SDMMC_SLOT_FLAG_INTERNAL_PULLUP ;
 int SDMMC_SLOT_NO_CD ;
 int SDMMC_SLOT_NO_WP ;
 int SDMMC_SLOT_WIDTH_DEFAULT ;
 int TAG ;
 int configure_pin (int ) ;
 int gpio_config (TYPE_3__*) ;
 int gpio_matrix_in (int,int ,int) ;
 int gpio_pad_select_gpio (int) ;
 int gpio_set_direction (int,int ) ;
 int gpio_set_level (int ,int) ;
 int s_intr_handle ;
 int* s_slot_width ;
 int sdmmc_host_pullup_en (int,int) ;
 scalar_t__ sdmmc_host_set_bus_width (int,int) ;
 scalar_t__ sdmmc_host_set_card_clk (int,int) ;
 TYPE_1__* sdmmc_slot_info ;

esp_err_t sdmmc_host_init_slot(int slot, const sdmmc_slot_config_t* slot_config)
{
    bool pullup = slot_config->flags & SDMMC_SLOT_FLAG_INTERNAL_PULLUP;
    if (pullup) {
        sdmmc_host_pullup_en(slot, slot_config->width);
    }
    if (!s_intr_handle) {
        return ESP_ERR_INVALID_STATE;
    }
    if (!(slot == 0 || slot == 1)) {
        return ESP_ERR_INVALID_ARG;
    }
    if (slot_config == ((void*)0)) {
        return ESP_ERR_INVALID_ARG;
    }
    int gpio_cd = slot_config->gpio_cd;
    int gpio_wp = slot_config->gpio_wp;
    uint8_t slot_width = slot_config->width;


    const sdmmc_slot_info_t* pslot = &sdmmc_slot_info[slot];

    if (slot_width == SDMMC_SLOT_WIDTH_DEFAULT) {
        slot_width = pslot->width;
    }
    else if (slot_width > pslot->width) {
        return ESP_ERR_INVALID_ARG;
    }
    s_slot_width[slot] = slot_width;

    configure_pin(pslot->clk_gpio);
    configure_pin(pslot->cmd_gpio);
    configure_pin(pslot->d0_gpio);

    if (slot_width >= 4) {
        configure_pin(pslot->d1_gpio);
        configure_pin(pslot->d2_gpio);


        gpio_config_t gpio_conf = {
            .pin_bit_mask = BIT(pslot->d3_gpio),
            .mode = GPIO_MODE_OUTPUT ,
            .pull_up_en = 0,
            .pull_down_en = 0,
            .intr_type = GPIO_INTR_DISABLE,
        };
        gpio_config(&gpio_conf);
        gpio_set_level(pslot->d3_gpio, 1);
        if (slot_width == 8) {
            configure_pin(pslot->d4_gpio);
            configure_pin(pslot->d5_gpio);
            configure_pin(pslot->d6_gpio);
            configure_pin(pslot->d7_gpio);
        }
    }



    gpio_matrix_in(GPIO_FUNC_IN_HIGH, pslot->card_int, 0);


    int matrix_in_cd;
    if (gpio_cd != SDMMC_SLOT_NO_CD) {
        ESP_LOGD(TAG, "using GPIO%d as CD pin", gpio_cd);
        gpio_pad_select_gpio(gpio_cd);
        gpio_set_direction(gpio_cd, GPIO_MODE_INPUT);
        matrix_in_cd = gpio_cd;
    } else {

        matrix_in_cd = GPIO_FUNC_IN_LOW;
    }
    gpio_matrix_in(matrix_in_cd, pslot->card_detect, 0);


    int matrix_in_wp;
    if (gpio_wp != SDMMC_SLOT_NO_WP) {
        ESP_LOGD(TAG, "using GPIO%d as WP pin", gpio_wp);
        gpio_pad_select_gpio(gpio_wp);
        gpio_set_direction(gpio_wp, GPIO_MODE_INPUT);
        matrix_in_wp = gpio_wp;
    } else {

        matrix_in_wp = GPIO_FUNC_IN_HIGH;
    }


    gpio_matrix_in(matrix_in_wp, pslot->write_protect, 1);


    esp_err_t ret = sdmmc_host_set_card_clk(slot, 400);
    if (ret != ESP_OK) {
        return ret;
    }
    ret = sdmmc_host_set_bus_width(slot, 1);
    if (ret != ESP_OK) {
        return ret;
    }
    return ESP_OK;
}
