
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESP_LOGE (int ,char*,...) ;

 int TAG ;


__attribute__((used)) static void log_invalid_app_partition(int index)
{
    const char *not_bootable = " is not bootable";
    switch (index) {
    case 129:
        ESP_LOGE(TAG, "Factory app partition%s", not_bootable);
        break;
    case 128:
        ESP_LOGE(TAG, "Factory test app partition%s", not_bootable);
        break;
    default:
        ESP_LOGE(TAG, "OTA app partition slot %d%s", index, not_bootable);
        break;
    }
}
