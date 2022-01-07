
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int httpd_handle_t ;


 int ESP_LOGI (int ,char*,int ) ;
 int TAG ;
 int esp_get_free_heap_size () ;
 int httpd_stop (int ) ;
 int post_stop_mem ;

__attribute__((used)) static void test_httpd_stop(httpd_handle_t hd)
{
    httpd_stop(hd);
    post_stop_mem = esp_get_free_heap_size();
    ESP_LOGI(TAG, "HTTPD Stop: Current free memory: %d", post_stop_mem);
}
