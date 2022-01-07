
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {int address; int subtype; int type; } ;
typedef TYPE_1__ esp_partition_t ;
typedef int esp_ota_handle_t ;
typedef int esp_image_segment_header_t ;
typedef int esp_image_header_t ;
typedef int * esp_http_client_handle_t ;
struct TYPE_15__ {char* cert_pem; int url; } ;
typedef TYPE_2__ esp_http_client_config_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_16__ {int version; } ;
typedef TYPE_3__ esp_app_desc_t ;


 int BUFFSIZE ;
 int CONFIG_EXAMPLE_FIRMWARE_UPG_URL ;
 int ESP_LOGD (int ,char*,int) ;
 int ESP_LOGE (int ,char*,...) ;
 int ESP_LOGI (int ,char*,...) ;
 int ESP_LOGW (int ,char*,...) ;
 scalar_t__ ESP_OK ;
 int OTA_SIZE_UNKNOWN ;
 int TAG ;
 int assert (int ) ;
 int esp_err_to_name (scalar_t__) ;
 int esp_http_client_cleanup (int *) ;
 int esp_http_client_fetch_headers (int *) ;
 int * esp_http_client_init (TYPE_2__*) ;
 int esp_http_client_is_complete_data_received (int *) ;
 scalar_t__ esp_http_client_open (int *,int ) ;
 int esp_http_client_read (int *,int *,int ) ;
 scalar_t__ esp_ota_begin (TYPE_1__ const*,int ,int *) ;
 scalar_t__ esp_ota_end (int ) ;
 TYPE_1__* esp_ota_get_boot_partition () ;
 TYPE_1__* esp_ota_get_last_invalid_partition () ;
 TYPE_1__* esp_ota_get_next_update_partition (int *) ;
 scalar_t__ esp_ota_get_partition_description (TYPE_1__ const*,TYPE_3__*) ;
 TYPE_1__* esp_ota_get_running_partition () ;
 scalar_t__ esp_ota_set_boot_partition (TYPE_1__ const*) ;
 scalar_t__ esp_ota_write (int ,void const*,int) ;
 int esp_restart () ;
 int http_cleanup (int *) ;
 int infinite_loop () ;
 scalar_t__ memcmp (int ,int ,int) ;
 int memcpy (TYPE_3__*,int *,int) ;
 int * ota_write_data ;
 scalar_t__ server_cert_pem_start ;
 int task_fatal_error () ;

__attribute__((used)) static void ota_example_task(void *pvParameter)
{
    esp_err_t err;

    esp_ota_handle_t update_handle = 0 ;
    const esp_partition_t *update_partition = ((void*)0);

    ESP_LOGI(TAG, "Starting OTA example");

    const esp_partition_t *configured = esp_ota_get_boot_partition();
    const esp_partition_t *running = esp_ota_get_running_partition();

    if (configured != running) {
        ESP_LOGW(TAG, "Configured OTA boot partition at offset 0x%08x, but running from offset 0x%08x",
                 configured->address, running->address);
        ESP_LOGW(TAG, "(This can happen if either the OTA boot data or preferred boot image become corrupted somehow.)");
    }
    ESP_LOGI(TAG, "Running partition type %d subtype %d (offset 0x%08x)",
             running->type, running->subtype, running->address);

    esp_http_client_config_t config = {
        .url = CONFIG_EXAMPLE_FIRMWARE_UPG_URL,
        .cert_pem = (char *)server_cert_pem_start,
    };
    esp_http_client_handle_t client = esp_http_client_init(&config);
    if (client == ((void*)0)) {
        ESP_LOGE(TAG, "Failed to initialise HTTP connection");
        task_fatal_error();
    }
    err = esp_http_client_open(client, 0);
    if (err != ESP_OK) {
        ESP_LOGE(TAG, "Failed to open HTTP connection: %s", esp_err_to_name(err));
        esp_http_client_cleanup(client);
        task_fatal_error();
    }
    esp_http_client_fetch_headers(client);

    update_partition = esp_ota_get_next_update_partition(((void*)0));
    ESP_LOGI(TAG, "Writing to partition subtype %d at offset 0x%x",
             update_partition->subtype, update_partition->address);
    assert(update_partition != ((void*)0));

    int binary_file_length = 0;

    bool image_header_was_checked = 0;
    while (1) {
        int data_read = esp_http_client_read(client, ota_write_data, BUFFSIZE);
        if (data_read < 0) {
            ESP_LOGE(TAG, "Error: SSL data read error");
            http_cleanup(client);
            task_fatal_error();
        } else if (data_read > 0) {
            if (image_header_was_checked == 0) {
                esp_app_desc_t new_app_info;
                if (data_read > sizeof(esp_image_header_t) + sizeof(esp_image_segment_header_t) + sizeof(esp_app_desc_t)) {

                    memcpy(&new_app_info, &ota_write_data[sizeof(esp_image_header_t) + sizeof(esp_image_segment_header_t)], sizeof(esp_app_desc_t));
                    ESP_LOGI(TAG, "New firmware version: %s", new_app_info.version);

                    esp_app_desc_t running_app_info;
                    if (esp_ota_get_partition_description(running, &running_app_info) == ESP_OK) {
                        ESP_LOGI(TAG, "Running firmware version: %s", running_app_info.version);
                    }

                    const esp_partition_t* last_invalid_app = esp_ota_get_last_invalid_partition();
                    esp_app_desc_t invalid_app_info;
                    if (esp_ota_get_partition_description(last_invalid_app, &invalid_app_info) == ESP_OK) {
                        ESP_LOGI(TAG, "Last invalid firmware version: %s", invalid_app_info.version);
                    }


                    if (last_invalid_app != ((void*)0)) {
                        if (memcmp(invalid_app_info.version, new_app_info.version, sizeof(new_app_info.version)) == 0) {
                            ESP_LOGW(TAG, "New version is the same as invalid version.");
                            ESP_LOGW(TAG, "Previously, there was an attempt to launch the firmware with %s version, but it failed.", invalid_app_info.version);
                            ESP_LOGW(TAG, "The firmware has been rolled back to the previous version.");
                            http_cleanup(client);
                            infinite_loop();
                        }
                    }

                    if (memcmp(new_app_info.version, running_app_info.version, sizeof(new_app_info.version)) == 0) {
                        ESP_LOGW(TAG, "Current running version is the same as a new. We will not continue the update.");
                        http_cleanup(client);
                        infinite_loop();
                    }

                    image_header_was_checked = 1;

                    err = esp_ota_begin(update_partition, OTA_SIZE_UNKNOWN, &update_handle);
                    if (err != ESP_OK) {
                        ESP_LOGE(TAG, "esp_ota_begin failed (%s)", esp_err_to_name(err));
                        http_cleanup(client);
                        task_fatal_error();
                    }
                    ESP_LOGI(TAG, "esp_ota_begin succeeded");
                } else {
                    ESP_LOGE(TAG, "received package is not fit len");
                    http_cleanup(client);
                    task_fatal_error();
                }
            }
            err = esp_ota_write( update_handle, (const void *)ota_write_data, data_read);
            if (err != ESP_OK) {
                http_cleanup(client);
                task_fatal_error();
            }
            binary_file_length += data_read;
            ESP_LOGD(TAG, "Written image length %d", binary_file_length);
        } else if (data_read == 0) {
            ESP_LOGI(TAG, "Connection closed");
            break;
        }
    }
    ESP_LOGI(TAG, "Total Write binary data length: %d", binary_file_length);
    if (esp_http_client_is_complete_data_received(client) != 1) {
        ESP_LOGE(TAG, "Error in receiving complete file");
        http_cleanup(client);
        task_fatal_error();
    }

    err = esp_ota_end(update_handle);
    if (err != ESP_OK) {
        ESP_LOGE(TAG, "esp_ota_end failed (%s)!", esp_err_to_name(err));
        http_cleanup(client);
        task_fatal_error();
    }

    err = esp_ota_set_boot_partition(update_partition);
    if (err != ESP_OK) {
        ESP_LOGE(TAG, "esp_ota_set_boot_partition failed (%s)!", esp_err_to_name(err));
        http_cleanup(client);
        task_fatal_error();
    }
    ESP_LOGI(TAG, "Prepare to restart system!");
    esp_restart();
    return ;
}
