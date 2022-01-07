
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_5__ {scalar_t__ handle; scalar_t__ erased_size; scalar_t__ wrote_size; int partial_bytes; scalar_t__ const* partial_data; int part; } ;
typedef TYPE_1__ ota_ops_entry_t ;
typedef scalar_t__ esp_ota_handle_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_ERR_INVALID_ARG ;
 scalar_t__ ESP_ERR_OTA_VALIDATE_FAILED ;
 scalar_t__ const ESP_IMAGE_HEADER_MAGIC ;
 int ESP_LOGE (int ,char*,...) ;
 scalar_t__ ESP_OK ;
 TYPE_1__* LIST_FIRST (int *) ;
 TYPE_1__* LIST_NEXT (TYPE_1__*,int ) ;
 size_t MIN (int,size_t) ;
 int TAG ;
 int assert (int ) ;
 int entries ;
 scalar_t__ esp_flash_encryption_enabled () ;
 scalar_t__ esp_partition_write (int ,scalar_t__,scalar_t__ const*,size_t) ;
 int memcpy (scalar_t__ const*,scalar_t__ const*,size_t) ;
 int memset (scalar_t__ const*,int,int) ;
 int s_ota_ops_entries_head ;

esp_err_t esp_ota_write(esp_ota_handle_t handle, const void *data, size_t size)
{
    const uint8_t *data_bytes = (const uint8_t *)data;
    esp_err_t ret;
    ota_ops_entry_t *it;

    if (data == ((void*)0)) {
        ESP_LOGE(TAG, "write data is invalid");
        return ESP_ERR_INVALID_ARG;
    }


    for (it = LIST_FIRST(&s_ota_ops_entries_head); it != ((void*)0); it = LIST_NEXT(it, entries)) {
        if (it->handle == handle) {

            assert(it->erased_size > 0 && "must erase the partition before writing to it");
            if (it->wrote_size == 0 && it->partial_bytes == 0 && size > 0 && data_bytes[0] != ESP_IMAGE_HEADER_MAGIC) {
                ESP_LOGE(TAG, "OTA image has invalid magic byte (expected 0xE9, saw 0x%02x)", data_bytes[0]);
                return ESP_ERR_OTA_VALIDATE_FAILED;
            }

            if (esp_flash_encryption_enabled()) {

                size_t copy_len;


                if (it->partial_bytes != 0) {
                    copy_len = MIN(16 - it->partial_bytes, size);
                    memcpy(it->partial_data + it->partial_bytes, data_bytes, copy_len);
                    it->partial_bytes += copy_len;
                    if (it->partial_bytes != 16) {
                        return ESP_OK;
                    }

                    ret = esp_partition_write(it->part, it->wrote_size, it->partial_data, 16);
                    if (ret != ESP_OK) {
                        return ret;
                    }
                    it->partial_bytes = 0;
                    memset(it->partial_data, 0xFF, 16);
                    it->wrote_size += 16;
                    data_bytes += copy_len;
                    size -= copy_len;
                }


                it->partial_bytes = size % 16;
                if (it->partial_bytes != 0) {
                    size -= it->partial_bytes;
                    memcpy(it->partial_data, data_bytes + size, it->partial_bytes);
                }
            }

            ret = esp_partition_write(it->part, it->wrote_size, data_bytes, size);
            if(ret == ESP_OK){
                it->wrote_size += size;
            }
            return ret;
        }
    }


    ESP_LOGE(TAG,"not found the handle");
    return ESP_ERR_INVALID_ARG;
}
