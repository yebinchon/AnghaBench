
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int httpd_handle_t ;


 int ESP_LOGI (int ,char*,...) ;
 int ESP_LOGW (int ,char*,int) ;
 scalar_t__ ESP_OK ;
 int TAG ;
 int * basic_handlers ;
 int basic_handlers_no ;
 scalar_t__ httpd_register_uri_handler (int ,int *) ;

__attribute__((used)) static void register_basic_handlers(httpd_handle_t hd)
{
    int i;
    ESP_LOGI(TAG, "Registering basic handlers");
    ESP_LOGI(TAG, "No of handlers = %d", basic_handlers_no);
    for (i = 0; i < basic_handlers_no; i++) {
        if (httpd_register_uri_handler(hd, &basic_handlers[i]) != ESP_OK) {
            ESP_LOGW(TAG, "register uri failed for %d", i);
            return;
        }
    }
    ESP_LOGI(TAG, "Success");
}
