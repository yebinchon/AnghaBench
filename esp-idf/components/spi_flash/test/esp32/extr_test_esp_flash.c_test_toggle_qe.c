
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {void* read_mode; } ;
typedef TYPE_1__ esp_flash_t ;
typedef void* esp_flash_io_mode_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_ERR_FLASH_NO_RESPONSE ;
 int ESP_LOGD (int ,char*,int) ;
 int ESP_LOGE (int ,char*) ;
 int ESP_LOGI (int ,char*,int,int) ;
 scalar_t__ ESP_OK ;
 void* SPI_FLASH_QOUT ;
 void* SPI_FLASH_SLOWRD ;
 int TAG ;
 int TEST_ASSERT_EQUAL (int,int) ;
 int TEST_ESP_OK (scalar_t__) ;
 int check_winbond_chip (TYPE_1__*) ;
 TYPE_1__* esp_flash_default_chip ;
 scalar_t__ esp_flash_get_io_mode (TYPE_1__*,int*) ;
 scalar_t__ esp_flash_set_io_mode (TYPE_1__*,int) ;

__attribute__((used)) static void test_toggle_qe(esp_flash_t* chip)
{
    bool qe;
    if (chip == ((void*)0)) {
        chip = esp_flash_default_chip;
    }
    esp_flash_io_mode_t io_mode_before = chip->read_mode;
    esp_err_t ret = esp_flash_get_io_mode(chip, &qe);
    TEST_ESP_OK(ret);

    bool is_winbond_chip = check_winbond_chip(chip);

    for (int i = 0; i < 4; i ++) {
        ESP_LOGI(TAG, "write qe: %d->%d", qe, !qe);
        qe = !qe;
        chip->read_mode = qe? SPI_FLASH_QOUT: SPI_FLASH_SLOWRD;
        ret = esp_flash_set_io_mode(chip, qe);
        if (is_winbond_chip && !qe && ret == ESP_ERR_FLASH_NO_RESPONSE) {

            ret = ESP_OK;
        }
        TEST_ESP_OK(ret);

        bool qe_read;
        ret = esp_flash_get_io_mode(chip, &qe_read);
        TEST_ESP_OK(ret);
        ESP_LOGD(TAG, "qe read: %d", qe_read);
        if (qe != qe_read && !qe && is_winbond_chip) {
            ESP_LOGE(TAG, "cannot clear QE bit, this may be normal for Winbond chips.");
            chip->read_mode = io_mode_before;
            return;
        }
        TEST_ASSERT_EQUAL(qe, qe_read);
    }

    chip->read_mode = io_mode_before;
}
