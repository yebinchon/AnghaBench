
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_3__* tls; } ;
typedef TYPE_1__ transport_ssl_t ;
typedef int esp_transport_handle_t ;
struct TYPE_5__ {int error_handle; int sockfd; } ;


 int ESP_LOGE (int ,char*,int ) ;
 int ESP_LOGW (int ,char*,int ,int ,int) ;
 int TAG ;
 int errno ;
 int esp_tls_conn_write (TYPE_3__*,unsigned char const*,int) ;
 TYPE_1__* esp_transport_get_context_data (int ) ;
 int esp_transport_poll_write (int ,int) ;
 int esp_transport_set_errors (int ,int ) ;
 int strerror (int ) ;

__attribute__((used)) static int ssl_write(esp_transport_handle_t t, const char *buffer, int len, int timeout_ms)
{
    int poll, ret;
    transport_ssl_t *ssl = esp_transport_get_context_data(t);

    if ((poll = esp_transport_poll_write(t, timeout_ms)) <= 0) {
        ESP_LOGW(TAG, "Poll timeout or error, errno=%s, fd=%d, timeout_ms=%d", strerror(errno), ssl->tls->sockfd, timeout_ms);
        return poll;
    }
    ret = esp_tls_conn_write(ssl->tls, (const unsigned char *) buffer, len);
    if (ret < 0) {
        ESP_LOGE(TAG, "esp_tls_conn_write error, errno=%s", strerror(errno));
        esp_transport_set_errors(t, ssl->tls->error_handle);
    }
    return ret;
}
