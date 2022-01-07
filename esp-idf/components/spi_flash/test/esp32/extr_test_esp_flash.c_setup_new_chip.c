
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int host_id; int input_delay_ns; int cs_io_num; int cs_id; int speed; int io_mode; } ;
typedef TYPE_1__ flashtest_config_t ;
typedef int esp_flash_t ;
struct TYPE_6__ {int host_id; int input_delay_ns; int cs_io_num; int cs_id; int speed; int io_mode; } ;
typedef TYPE_2__ esp_flash_spi_device_config_t ;
typedef int esp_err_t ;


 int TEST_ESP_OK (int ) ;
 int esp_flash_init (int *) ;
 int setup_bus (int) ;
 int spi_bus_add_flash_device (int **,TYPE_2__*) ;

__attribute__((used)) static void setup_new_chip(const flashtest_config_t* test_cfg, esp_flash_t** out_chip)
{

    if (test_cfg->host_id == -1) {
        *out_chip = ((void*)0);
        return;
    }
    setup_bus(test_cfg->host_id);

    esp_flash_spi_device_config_t dev_cfg = {
        .host_id = test_cfg->host_id,
        .io_mode = test_cfg->io_mode,
        .speed = test_cfg->speed,
        .cs_id = test_cfg->cs_id,
        .cs_io_num = test_cfg->cs_io_num,
        .input_delay_ns = test_cfg->input_delay_ns,
    };
    esp_flash_t* init_chip;
    esp_err_t err = spi_bus_add_flash_device(&init_chip, &dev_cfg);
    TEST_ESP_OK(err);
    err = esp_flash_init(init_chip);
    TEST_ESP_OK(err);
    *out_chip = init_chip;
}
