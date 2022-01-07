
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_partition_subtype_t ;







__attribute__((used)) static const char* get_subtype_str(esp_partition_subtype_t subtype)
{
    switch(subtype) {
        case 129:
            return "ESP_PARTITION_SUBTYPE_DATA_NVS";
        case 128:
            return "ESP_PARTITION_SUBTYPE_DATA_PHY";
        case 131:
            return "ESP_PARTITION_SUBTYPE_APP_FACTORY";
        case 130:
            return "ESP_PARTITION_SUBTYPE_DATA_FAT";
        default:
            return "UNKNOWN_PARTITION_SUBTYPE";
    }
}
