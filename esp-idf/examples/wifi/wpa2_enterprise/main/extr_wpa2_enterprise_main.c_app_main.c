
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESP_ERROR_CHECK (int ) ;
 int initialise_wifi () ;
 int nvs_flash_init () ;
 int wpa2_enterprise_example_task ;
 int xTaskCreate (int *,char*,int,int *,int,int *) ;

void app_main(void)
{
    ESP_ERROR_CHECK( nvs_flash_init() );
    initialise_wifi();
    xTaskCreate(&wpa2_enterprise_example_task, "wpa2_enterprise_example_task", 4096, ((void*)0), 5, ((void*)0));
}
