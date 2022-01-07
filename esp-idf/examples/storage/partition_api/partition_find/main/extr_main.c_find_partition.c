
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int esp_partition_type_t ;
struct TYPE_3__ {char* size; int address; int label; } ;
typedef TYPE_1__ esp_partition_t ;
typedef int esp_partition_subtype_t ;


 int ESP_LOGI (int ,char*,int ,int ,char*) ;
 int TAG ;
 TYPE_1__* esp_partition_find_first (int ,int ,char const*) ;
 int get_subtype_str (int ) ;
 int get_type_str (int ) ;

__attribute__((used)) static void find_partition(esp_partition_type_t type, esp_partition_subtype_t subtype, const char* name)
{
    ESP_LOGI(TAG, "Find partition with type %s, subtype %s, label %s...", get_type_str(type), get_subtype_str(subtype),
                    name == ((void*)0) ? "NULL (unspecified)" : name);
    const esp_partition_t * part = esp_partition_find_first(type, subtype, name);
    ESP_LOGI(TAG, "\tfound partition '%s' at offset 0x%x with size 0x%x", part->label, part->address, part->size);
}
