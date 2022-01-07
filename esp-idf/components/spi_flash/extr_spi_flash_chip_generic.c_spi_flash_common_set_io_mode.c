
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ (* esp_flash_wrsr_func_t ) (TYPE_2__*,scalar_t__) ;
struct TYPE_16__ {TYPE_1__* chip_drv; } ;
typedef TYPE_2__ esp_flash_t ;
typedef scalar_t__ (* esp_flash_rdsr_func_t ) (TYPE_2__*,scalar_t__*) ;
typedef scalar_t__ esp_err_t ;
struct TYPE_15__ {int (* set_chip_write_protect ) (TYPE_2__*,int) ;scalar_t__ (* wait_idle ) (TYPE_2__*,int ) ;} ;


 int DEFAULT_IDLE_TIMEOUT ;
 int ESP_EARLY_LOGD (int ,char*,scalar_t__) ;
 int ESP_EARLY_LOGV (int ,char*,scalar_t__) ;
 scalar_t__ ESP_ERR_FLASH_NO_RESPONSE ;
 scalar_t__ ESP_OK ;
 int TAG ;
 int esp_flash_is_quad_mode (TYPE_2__*) ;
 scalar_t__ stub1 (TYPE_2__*,scalar_t__*) ;
 int stub2 (TYPE_2__*,int) ;
 scalar_t__ stub3 (TYPE_2__*,scalar_t__) ;
 scalar_t__ stub4 (TYPE_2__*,int ) ;
 scalar_t__ stub5 (TYPE_2__*,scalar_t__*) ;
 int stub6 (TYPE_2__*,int) ;

esp_err_t spi_flash_common_set_io_mode(esp_flash_t *chip, esp_flash_wrsr_func_t wrsr_func, esp_flash_rdsr_func_t rdsr_func, uint32_t qe_sr_bit)
{
    esp_err_t ret = ESP_OK;
    const bool is_quad_mode = esp_flash_is_quad_mode(chip);
    bool update_config = 0;
    const bool force_check = 1;

    bool need_check = is_quad_mode;
    if (force_check) {
        need_check = 1;
    }

    uint32_t sr_update;
    if (need_check) {

        uint32_t sr;
        ret = (*rdsr_func)(chip, &sr);
        if (ret != ESP_OK) {
            return ret;
        }
        ESP_EARLY_LOGD(TAG, "set_io_mode: status before 0x%x", sr);
        if (is_quad_mode) {
            sr_update = sr | qe_sr_bit;
        } else {
            sr_update = sr & (~qe_sr_bit);
        }
        ESP_EARLY_LOGV(TAG, "set_io_mode: status update 0x%x", sr_update);
        if (sr != sr_update) {
            update_config = 1;
        }
    }

    if (update_config) {

        chip->chip_drv->set_chip_write_protect(chip, 0);

        ret = (*wrsr_func)(chip, sr_update);
        if (ret != ESP_OK) {
            return ret;
        }

        ret = chip->chip_drv->wait_idle(chip, DEFAULT_IDLE_TIMEOUT);
        if (ret != ESP_OK) {
            return ret;
        }


        uint32_t sr;
        ret = (*rdsr_func)(chip, &sr);
        if (ret != ESP_OK) {
            return ret;
        }
        ESP_EARLY_LOGD(TAG, "set_io_mode: status after 0x%x", sr);
        if (sr != sr_update) {
            ret = ESP_ERR_FLASH_NO_RESPONSE;
        }

        chip->chip_drv->set_chip_write_protect(chip, 1);
    }
    return ret;
}
