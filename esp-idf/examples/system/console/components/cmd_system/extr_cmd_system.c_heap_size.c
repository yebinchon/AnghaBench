
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int ESP_LOGI (int ,char*,int ) ;
 int MALLOC_CAP_DEFAULT ;
 int TAG ;
 int heap_caps_get_minimum_free_size (int ) ;

__attribute__((used)) static int heap_size(int argc, char **argv)
{
    uint32_t heap_size = heap_caps_get_minimum_free_size(MALLOC_CAP_DEFAULT);
    ESP_LOGI(TAG, "min heap size: %u", heap_size);
    return 0;
}
