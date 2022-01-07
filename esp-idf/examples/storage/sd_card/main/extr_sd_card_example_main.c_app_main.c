
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct stat {int dummy; } ;
struct TYPE_11__ {int gpio_cs; int gpio_sck; int gpio_mosi; int gpio_miso; } ;
typedef TYPE_2__ sdspi_slot_config_t ;
typedef int sdmmc_slot_config_t ;
typedef int sdmmc_host_t ;
struct TYPE_10__ {char* name; } ;
struct TYPE_12__ {TYPE_1__ cid; } ;
typedef TYPE_3__ sdmmc_card_t ;
typedef int line ;
struct TYPE_13__ {int format_if_mount_failed; int max_files; int allocation_unit_size; } ;
typedef TYPE_4__ esp_vfs_fat_sdmmc_mount_config_t ;
typedef scalar_t__ esp_err_t ;
typedef int FILE ;


 scalar_t__ ESP_FAIL ;
 int ESP_LOGE (int ,char*,...) ;
 int ESP_LOGI (int ,char*,...) ;
 scalar_t__ ESP_OK ;
 int GPIO_PULLUP_ONLY ;
 int PIN_NUM_CLK ;
 int PIN_NUM_CS ;
 int PIN_NUM_MISO ;
 int PIN_NUM_MOSI ;
 int SDMMC_HOST_DEFAULT () ;
 int SDMMC_SLOT_CONFIG_DEFAULT () ;
 int SDSPI_HOST_DEFAULT () ;
 TYPE_2__ SDSPI_SLOT_CONFIG_DEFAULT () ;
 int TAG ;
 int esp_err_to_name (scalar_t__) ;
 scalar_t__ esp_vfs_fat_sdmmc_mount (char*,int *,TYPE_2__*,TYPE_4__*,TYPE_3__**) ;
 int esp_vfs_fat_sdmmc_unmount () ;
 int fclose (int *) ;
 int fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,char*) ;
 int gpio_set_pull_mode (int,int ) ;
 scalar_t__ rename (char*,char*) ;
 int sdmmc_card_print_info (int ,TYPE_3__*) ;
 scalar_t__ stat (char*,struct stat*) ;
 int stdout ;
 char* strchr (char*,char) ;
 int unlink (char*) ;

void app_main(void)
{
    ESP_LOGI(TAG, "Initializing SD card");


    ESP_LOGI(TAG, "Using SDMMC peripheral");
    sdmmc_host_t host = SDMMC_HOST_DEFAULT();



    sdmmc_slot_config_t slot_config = SDMMC_SLOT_CONFIG_DEFAULT();







    gpio_set_pull_mode(15, GPIO_PULLUP_ONLY);
    gpio_set_pull_mode(2, GPIO_PULLUP_ONLY);
    gpio_set_pull_mode(4, GPIO_PULLUP_ONLY);
    gpio_set_pull_mode(12, GPIO_PULLUP_ONLY);
    gpio_set_pull_mode(13, GPIO_PULLUP_ONLY);
    esp_vfs_fat_sdmmc_mount_config_t mount_config = {
        .format_if_mount_failed = 0,
        .max_files = 5,
        .allocation_unit_size = 16 * 1024
    };





    sdmmc_card_t* card;
    esp_err_t ret = esp_vfs_fat_sdmmc_mount("/sdcard", &host, &slot_config, &mount_config, &card);

    if (ret != ESP_OK) {
        if (ret == ESP_FAIL) {
            ESP_LOGE(TAG, "Failed to mount filesystem. "
                "If you want the card to be formatted, set format_if_mount_failed = true.");
        } else {
            ESP_LOGE(TAG, "Failed to initialize the card (%s). "
                "Make sure SD card lines have pull-up resistors in place.", esp_err_to_name(ret));
        }
        return;
    }


    sdmmc_card_print_info(stdout, card);



    ESP_LOGI(TAG, "Opening file");
    FILE* f = fopen("/sdcard/hello.txt", "w");
    if (f == ((void*)0)) {
        ESP_LOGE(TAG, "Failed to open file for writing");
        return;
    }
    fprintf(f, "Hello %s!\n", card->cid.name);
    fclose(f);
    ESP_LOGI(TAG, "File written");


    struct stat st;
    if (stat("/sdcard/foo.txt", &st) == 0) {

        unlink("/sdcard/foo.txt");
    }


    ESP_LOGI(TAG, "Renaming file");
    if (rename("/sdcard/hello.txt", "/sdcard/foo.txt") != 0) {
        ESP_LOGE(TAG, "Rename failed");
        return;
    }


    ESP_LOGI(TAG, "Reading file");
    f = fopen("/sdcard/foo.txt", "r");
    if (f == ((void*)0)) {
        ESP_LOGE(TAG, "Failed to open file for reading");
        return;
    }
    char line[64];
    fgets(line, sizeof(line), f);
    fclose(f);

    char* pos = strchr(line, '\n');
    if (pos) {
        *pos = '\0';
    }
    ESP_LOGI(TAG, "Read from file: '%s'", line);


    esp_vfs_fat_sdmmc_unmount();
    ESP_LOGI(TAG, "Card unmounted");
}
