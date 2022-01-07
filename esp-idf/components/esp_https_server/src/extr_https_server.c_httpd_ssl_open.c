
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * httpd_handle_t ;
typedef int esp_tls_t ;
typedef int esp_tls_cfg_server_t ;
typedef int esp_err_t ;


 int ESP_ERR_NO_MEM ;
 int ESP_FAIL ;
 int ESP_LOGD (int ,char*) ;
 int ESP_LOGE (int ,char*) ;
 int ESP_LOGI (int ,char*) ;
 int ESP_OK ;
 int TAG ;
 int assert (int ) ;
 scalar_t__ calloc (int,int) ;
 int esp_tls_server_session_create (int *,int,int *) ;
 int esp_tls_server_session_delete (int *) ;
 int * httpd_get_global_transport_ctx (int *) ;
 int httpd_sess_set_pending_override (int *,int,int ) ;
 int httpd_sess_set_recv_override (int *,int,int ) ;
 int httpd_sess_set_send_override (int *,int,int ) ;
 int httpd_sess_set_transport_ctx (int *,int,int *,int ) ;
 int httpd_ssl_close ;
 int httpd_ssl_pending ;
 int httpd_ssl_recv ;
 int httpd_ssl_send ;

__attribute__((used)) static esp_err_t httpd_ssl_open(httpd_handle_t server, int sockfd)
{
    assert(server != ((void*)0));


    esp_tls_cfg_server_t *global_ctx = httpd_get_global_transport_ctx(server);
    assert(global_ctx != ((void*)0));

    esp_tls_t *tls = (esp_tls_t *)calloc(1, sizeof(esp_tls_t));
    if (!tls) {
        return ESP_ERR_NO_MEM;
    }
    ESP_LOGI(TAG, "performing session handshake");
    int ret = esp_tls_server_session_create(global_ctx, sockfd, tls);
    if (ret != 0) {
        ESP_LOGE(TAG, "esp_tls_create_server_session failed");
        goto fail;
    }


    httpd_sess_set_transport_ctx(server, sockfd, tls, httpd_ssl_close);


    httpd_sess_set_send_override(server, sockfd, httpd_ssl_send);
    httpd_sess_set_recv_override(server, sockfd, httpd_ssl_recv);
    httpd_sess_set_pending_override(server, sockfd, httpd_ssl_pending);



    ESP_LOGD(TAG, "Secure socket open");

    return ESP_OK;
fail:
    esp_tls_server_session_delete(tls);
    return ESP_FAIL;
}
