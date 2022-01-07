
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESP_LOGD (int ,char*) ;
 int TAG ;
 int assert (int ) ;
 int esp_tls_server_session_delete (void*) ;

__attribute__((used)) static void httpd_ssl_close(void *ctx)
{
    assert(ctx != ((void*)0));
    esp_tls_server_session_delete(ctx);
    ESP_LOGD(TAG, "Secure socket closed");
}
