
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_flash_t ;
typedef int esp_err_t ;


 int ESP_OK ;
 int TEST_ASSERT (int) ;
 int TEST_ESP_OK (int ) ;
 int esp_flash_get_chip_write_protect (int *,int*) ;
 int esp_flash_set_chip_write_protect (int *,int) ;

__attribute__((used)) static void test_write_protection(esp_flash_t* chip)
{
    bool wp = 1;
    esp_err_t ret = ESP_OK;
    ret = esp_flash_get_chip_write_protect(chip, &wp);
    TEST_ESP_OK(ret);

    for (int i = 0; i < 4; i ++) {
        bool wp_write = !wp;
        ret = esp_flash_set_chip_write_protect(chip, wp_write);
        TEST_ESP_OK(ret);

        bool wp_read;
        ret = esp_flash_get_chip_write_protect(chip, &wp_read);
        TEST_ESP_OK(ret);
        TEST_ASSERT(wp_read == wp_write);
        wp = wp_read;
    }
}
