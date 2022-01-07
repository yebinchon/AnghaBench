
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESP_LOGI (int ,char*) ;
 int TAG ;
 int http_absolute_redirect () ;
 int http_auth_basic () ;
 int http_auth_basic_redirect () ;
 int http_auth_digest () ;
 int http_download_chunk () ;
 int http_perform_as_stream_reader () ;
 int http_redirect_to_https () ;
 int http_relative_redirect () ;
 int http_rest_with_hostname_path () ;
 int http_rest_with_url () ;
 int https_async () ;
 int https_with_hostname_path () ;
 int https_with_invalid_url () ;
 int https_with_url () ;
 int vTaskDelete (int *) ;

__attribute__((used)) static void http_test_task(void *pvParameters)
{
    http_rest_with_url();
    http_rest_with_hostname_path();
    http_auth_basic();
    http_auth_basic_redirect();
    http_auth_digest();
    http_relative_redirect();
    http_absolute_redirect();
    https_with_url();
    https_with_hostname_path();
    http_redirect_to_https();
    http_download_chunk();
    http_perform_as_stream_reader();
    https_async();
    https_with_invalid_url();

    ESP_LOGI(TAG, "Finish http example");
    vTaskDelete(((void*)0));
}
