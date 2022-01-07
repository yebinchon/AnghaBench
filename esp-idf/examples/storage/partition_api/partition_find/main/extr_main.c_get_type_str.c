
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_partition_type_t ;





__attribute__((used)) static const char* get_type_str(esp_partition_type_t type)
{
    switch(type) {
        case 129:
            return "ESP_PARTITION_TYPE_APP";
        case 128:
            return "ESP_PARTITION_TYPE_DATA";
        default:
            return "UNKNOWN_PARTITION_TYPE";
    }
}
