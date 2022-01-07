
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int esp_partition_t ;
typedef int esp_partition_subtype_t ;
struct TYPE_5__ {int ota_seq; void* ota_state; } ;
typedef TYPE_1__ esp_ota_select_entry_t ;
typedef int esp_err_t ;


 int ESP_ERR_INVALID_ARG ;
 int ESP_ERR_NOT_FOUND ;
 int SUB_TYPE_ID (int ) ;
 int bootloader_common_get_active_otadata (TYPE_1__*) ;
 int get_ota_partition_count () ;
 int * read_otadata (TYPE_1__*) ;
 int rewrite_ota_seq (TYPE_1__*,int,int,int const*) ;
 void* set_new_state_otadata () ;

__attribute__((used)) static esp_err_t esp_rewrite_ota_data(esp_partition_subtype_t subtype)
{
    esp_ota_select_entry_t otadata[2];
    const esp_partition_t *otadata_partition = read_otadata(otadata);
    if (otadata_partition == ((void*)0)) {
        return ESP_ERR_NOT_FOUND;
    }

    int ota_app_count = get_ota_partition_count();
    if (SUB_TYPE_ID(subtype) >= ota_app_count) {
        return ESP_ERR_INVALID_ARG;
    }
    int active_otadata = bootloader_common_get_active_otadata(otadata);
    if (active_otadata != -1) {
        uint32_t seq = otadata[active_otadata].ota_seq;
        uint32_t i = 0;
        while (seq > (SUB_TYPE_ID(subtype) + 1) % ota_app_count + i * ota_app_count) {
            i++;
        }
        int next_otadata = (~active_otadata)&1;
        otadata[next_otadata].ota_state = set_new_state_otadata();
        return rewrite_ota_seq(otadata, (SUB_TYPE_ID(subtype) + 1) % ota_app_count + i * ota_app_count, next_otadata, otadata_partition);
    } else {

        int next_otadata = 0;
        otadata[next_otadata].ota_state = set_new_state_otadata();
        return rewrite_ota_seq(otadata, SUB_TYPE_ID(subtype) + 1, next_otadata, otadata_partition);
    }
}
