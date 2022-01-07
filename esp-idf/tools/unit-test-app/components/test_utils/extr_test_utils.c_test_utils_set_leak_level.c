
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t esp_type_leak_t ;
typedef int esp_err_t ;
typedef size_t esp_comp_leak_t ;


 size_t COMP_LEAK_ALL ;
 int ESP_ERR_INVALID_ARG ;
 int ESP_OK ;
 size_t TYPE_LEAK_MAX ;
 size_t** test_unity_leak_level ;

esp_err_t test_utils_set_leak_level(size_t leak_level, esp_type_leak_t type_of_leak, esp_comp_leak_t component)
{
    if (type_of_leak >= TYPE_LEAK_MAX || component >= COMP_LEAK_ALL) {
        return ESP_ERR_INVALID_ARG;
    }
    test_unity_leak_level[type_of_leak][component] = leak_level;
    return ESP_OK;
}
