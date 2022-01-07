
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {size_t erased_size; scalar_t__ handle; TYPE_2__ const* part; } ;
typedef TYPE_1__ ota_ops_entry_t ;
struct TYPE_12__ {size_t size; } ;
typedef TYPE_2__ esp_partition_t ;
typedef scalar_t__ esp_ota_img_states_t ;
typedef scalar_t__ esp_ota_handle_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_ERR_INVALID_ARG ;
 scalar_t__ ESP_ERR_NOT_FOUND ;
 scalar_t__ ESP_ERR_NO_MEM ;
 scalar_t__ ESP_ERR_OTA_PARTITION_CONFLICT ;
 scalar_t__ ESP_ERR_OTA_ROLLBACK_INVALID_STATE ;
 int ESP_LOGE (int ,char*) ;
 scalar_t__ ESP_OK ;
 scalar_t__ ESP_OTA_IMG_PENDING_VERIFY ;
 int LIST_INSERT_HEAD (int *,TYPE_1__*,int ) ;
 size_t OTA_SIZE_UNKNOWN ;
 size_t SPI_FLASH_SEC_SIZE ;
 int TAG ;
 scalar_t__ calloc (int,int) ;
 int entries ;
 TYPE_2__* esp_ota_get_running_partition () ;
 scalar_t__ esp_ota_get_state_partition (TYPE_2__ const*,scalar_t__*) ;
 scalar_t__ esp_partition_erase_range (TYPE_2__ const*,int ,size_t) ;
 TYPE_2__* esp_partition_verify (TYPE_2__ const*) ;
 int is_ota_partition (TYPE_2__ const*) ;
 int s_ota_ops_entries_head ;
 scalar_t__ s_ota_ops_last_handle ;

esp_err_t esp_ota_begin(const esp_partition_t *partition, size_t image_size, esp_ota_handle_t *out_handle)
{
    ota_ops_entry_t *new_entry;
    esp_err_t ret = ESP_OK;

    if ((partition == ((void*)0)) || (out_handle == ((void*)0))) {
        return ESP_ERR_INVALID_ARG;
    }

    partition = esp_partition_verify(partition);
    if (partition == ((void*)0)) {
        return ESP_ERR_NOT_FOUND;
    }

    if (!is_ota_partition(partition)) {
        return ESP_ERR_INVALID_ARG;
    }

    const esp_partition_t* running_partition = esp_ota_get_running_partition();
    if (partition == running_partition) {
        return ESP_ERR_OTA_PARTITION_CONFLICT;
    }
    if ((image_size == 0) || (image_size == OTA_SIZE_UNKNOWN)) {
        ret = esp_partition_erase_range(partition, 0, partition->size);
    } else {
        ret = esp_partition_erase_range(partition, 0, (image_size / SPI_FLASH_SEC_SIZE + 1) * SPI_FLASH_SEC_SIZE);
    }

    if (ret != ESP_OK) {
        return ret;
    }

    new_entry = (ota_ops_entry_t *) calloc(sizeof(ota_ops_entry_t), 1);
    if (new_entry == ((void*)0)) {
        return ESP_ERR_NO_MEM;
    }

    LIST_INSERT_HEAD(&s_ota_ops_entries_head, new_entry, entries);

    if ((image_size == 0) || (image_size == OTA_SIZE_UNKNOWN)) {
        new_entry->erased_size = partition->size;
    } else {
        new_entry->erased_size = image_size;
    }

    new_entry->part = partition;
    new_entry->handle = ++s_ota_ops_last_handle;
    *out_handle = new_entry->handle;
    return ESP_OK;
}
