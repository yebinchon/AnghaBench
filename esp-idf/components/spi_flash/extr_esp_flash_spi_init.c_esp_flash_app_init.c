
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int esp_err_t ;


 int default_chip ;
 int esp_flash_app_init_os_functions (int *) ;

esp_err_t esp_flash_app_init(void)
{
    return esp_flash_app_init_os_functions(&default_chip);
}
