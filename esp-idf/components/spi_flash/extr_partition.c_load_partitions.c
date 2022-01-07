
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint32_t ;
typedef int spi_flash_mmap_handle_t ;
struct TYPE_9__ {scalar_t__ type; scalar_t__ subtype; int encrypted; scalar_t__* label; int size; int address; int flash_chip; } ;
struct TYPE_10__ {int user_registered; TYPE_2__ info; } ;
typedef TYPE_3__ partition_list_item_t ;
struct TYPE_8__ {int size; int offset; } ;
struct TYPE_11__ {scalar_t__ magic; scalar_t__ type; scalar_t__ subtype; int flags; scalar_t__ label; TYPE_1__ pos; } ;
typedef TYPE_4__ esp_partition_info_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ ESP_ERR_NO_MEM ;
 scalar_t__ ESP_OK ;
 scalar_t__ ESP_PARTITION_MAGIC ;
 int ESP_PARTITION_TABLE_OFFSET ;
 int PART_FLAG_ENCRYPTED ;
 scalar_t__ PART_SUBTYPE_DATA_NVS_KEYS ;
 scalar_t__ PART_SUBTYPE_DATA_OTA ;
 scalar_t__ PART_TYPE_APP ;
 scalar_t__ PART_TYPE_DATA ;
 int SLIST_INSERT_AFTER (TYPE_3__*,TYPE_3__*,int ) ;
 int SLIST_INSERT_HEAD (int *,TYPE_3__*,int ) ;
 int SPI_FLASH_MMAP_DATA ;
 int SPI_FLASH_SEC_SIZE ;
 scalar_t__ calloc (int,int) ;
 int esp_flash_default_chip ;
 int esp_flash_encryption_enabled () ;
 int next ;
 int s_partition_list ;
 scalar_t__ spi_flash_mmap (int,int,int ,void const**,int *) ;
 int spi_flash_munmap (int ) ;
 int strncpy (scalar_t__*,char const*,int) ;

__attribute__((used)) static esp_err_t load_partitions(void)
{
    const uint32_t* ptr;
    spi_flash_mmap_handle_t handle;

    esp_err_t err = spi_flash_mmap(ESP_PARTITION_TABLE_OFFSET & 0xffff0000,
            SPI_FLASH_SEC_SIZE, SPI_FLASH_MMAP_DATA, (const void**) &ptr, &handle);
    if (err != ESP_OK) {
        return err;
    }

    const esp_partition_info_t* it = (const esp_partition_info_t*)
            (ptr + (ESP_PARTITION_TABLE_OFFSET & 0xffff) / sizeof(*ptr));
    const esp_partition_info_t* end = it + SPI_FLASH_SEC_SIZE / sizeof(*it);

    partition_list_item_t* last = ((void*)0);
    for (; it != end; ++it) {
        if (it->magic != ESP_PARTITION_MAGIC) {
            break;
        }

        partition_list_item_t* item = (partition_list_item_t*) calloc(sizeof(partition_list_item_t), 1);
        if (item == ((void*)0)) {
            err = ESP_ERR_NO_MEM;
            break;
        }
        item->info.flash_chip = esp_flash_default_chip;
        item->info.address = it->pos.offset;
        item->info.size = it->pos.size;
        item->info.type = it->type;
        item->info.subtype = it->subtype;
        item->info.encrypted = it->flags & PART_FLAG_ENCRYPTED;
        item->user_registered = 0;

        if (!esp_flash_encryption_enabled()) {

            item->info.encrypted = 0;
        } else if (it->type == PART_TYPE_APP
                || (it->type == PART_TYPE_DATA && it->subtype == PART_SUBTYPE_DATA_OTA)
                || (it->type == PART_TYPE_DATA && it->subtype == PART_SUBTYPE_DATA_NVS_KEYS)) {


            item->info.encrypted = 1;
        }


        strncpy(item->info.label, (const char*) it->label, sizeof(item->info.label) - 1);
        item->info.label[sizeof(it->label)] = 0;

        if (last == ((void*)0)) {
            SLIST_INSERT_HEAD(&s_partition_list, item, next);
        } else {
            SLIST_INSERT_AFTER(last, item, next);
        }
        last = item;
    }
    spi_flash_munmap(handle);
    return err;
}
