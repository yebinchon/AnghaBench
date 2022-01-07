
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_app_desc_t ;


 int const esp_app_desc ;

const esp_app_desc_t *esp_ota_get_app_description(void)
{
    return &esp_app_desc;
}
