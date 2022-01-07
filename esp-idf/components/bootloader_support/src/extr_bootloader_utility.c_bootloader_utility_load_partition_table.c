
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int size; int offset; } ;
struct TYPE_9__ {intptr_t type; intptr_t subtype; TYPE_1__ pos; int label; } ;
typedef TYPE_2__ esp_partition_info_t ;
typedef scalar_t__ esp_err_t ;
struct TYPE_10__ {TYPE_1__ ota_info; int app_count; TYPE_1__* ota; TYPE_1__ test; TYPE_1__ factory; } ;
typedef TYPE_3__ bootloader_state_t ;


 int ESP_LOGD (int ,char*,intptr_t,...) ;
 int ESP_LOGE (int ,char*,...) ;
 int ESP_LOGI (int ,char*,...) ;
 scalar_t__ ESP_OK ;
 int ESP_PARTITION_TABLE_MAX_LEN ;
 intptr_t ESP_PARTITION_TABLE_OFFSET ;






 size_t PART_SUBTYPE_OTA_FLAG ;
 size_t PART_SUBTYPE_OTA_MASK ;



 int TAG ;
 TYPE_2__* bootloader_mmap (intptr_t,int ) ;
 int bootloader_munmap (TYPE_2__ const*) ;
 int esp_efuse_init (int ,int ) ;
 scalar_t__ esp_partition_table_verify (TYPE_2__ const*,int,int*) ;

bool bootloader_utility_load_partition_table(bootloader_state_t *bs)
{
    const esp_partition_info_t *partitions;
    const char *partition_usage;
    esp_err_t err;
    int num_partitions;

    partitions = bootloader_mmap(ESP_PARTITION_TABLE_OFFSET, ESP_PARTITION_TABLE_MAX_LEN);
    if (!partitions) {
        ESP_LOGE(TAG, "bootloader_mmap(0x%x, 0x%x) failed", ESP_PARTITION_TABLE_OFFSET, ESP_PARTITION_TABLE_MAX_LEN);
        return 0;
    }
    ESP_LOGD(TAG, "mapped partition table 0x%x at 0x%x", ESP_PARTITION_TABLE_OFFSET, (intptr_t)partitions);

    err = esp_partition_table_verify(partitions, 1, &num_partitions);
    if (err != ESP_OK) {
        ESP_LOGE(TAG, "Failed to verify partition table");
        return 0;
    }

    ESP_LOGI(TAG, "Partition Table:");
    ESP_LOGI(TAG, "## Label            Usage          Type ST Offset   Length");

    for (int i = 0; i < num_partitions; i++) {
        const esp_partition_info_t *partition = &partitions[i];
        ESP_LOGD(TAG, "load partition table entry 0x%x", (intptr_t)partition);
        ESP_LOGD(TAG, "type=%x subtype=%x", partition->type, partition->subtype);
        partition_usage = "unknown";


        switch (partition->type) {
        case 129:
            switch (partition->subtype) {
            case 131:
                bs->factory = partition->pos;
                partition_usage = "factory app";
                break;
            case 130:
                bs->test = partition->pos;
                partition_usage = "test app";
                break;
            default:

                if ((partition->subtype & ~PART_SUBTYPE_OTA_MASK) == PART_SUBTYPE_OTA_FLAG) {
                    bs->ota[partition->subtype & PART_SUBTYPE_OTA_MASK] = partition->pos;
                    ++bs->app_count;
                    partition_usage = "OTA app";
                } else {
                    partition_usage = "Unknown app";
                }
                break;
            }
            break;
        case 128:
            switch (partition->subtype) {
            case 134:
                bs->ota_info = partition->pos;
                partition_usage = "OTA data";
                break;
            case 133:
                partition_usage = "RF data";
                break;
            case 132:
                partition_usage = "WiFi data";
                break;
            case 135:
                partition_usage = "NVS keys";
                break;
            case 136:
                partition_usage = "efuse";



                break;
            default:
                partition_usage = "Unknown data";
                break;
            }
            break;
        default:
            break;
        }


        ESP_LOGI(TAG, "%2d %-16s %-16s %02x %02x %08x %08x", i, partition->label, partition_usage,
                 partition->type, partition->subtype,
                 partition->pos.offset, partition->pos.size);
    }

    bootloader_munmap(partitions);

    ESP_LOGI(TAG, "End of partition table");
    return 1;
}
