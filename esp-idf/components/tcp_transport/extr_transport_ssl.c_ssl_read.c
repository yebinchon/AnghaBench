
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_3__* tls; } ;
typedef TYPE_1__ transport_ssl_t ;
typedef int esp_transport_handle_t ;
struct TYPE_6__ {int error_handle; } ;


 int ESP_LOGE (int ,char*,int ) ;
 int TAG ;
 int errno ;
 int esp_tls_conn_read (TYPE_3__*,unsigned char*,int) ;
 scalar_t__ esp_tls_get_bytes_avail (TYPE_3__*) ;
 TYPE_1__* esp_transport_get_context_data (int ) ;
 int esp_transport_poll_read (int ,int) ;
 int esp_transport_set_errors (int ,int ) ;
 int strerror (int ) ;

__attribute__((used)) static int ssl_read(esp_transport_handle_t t, char *buffer, int len, int timeout_ms)
{
    int poll, ret;
    transport_ssl_t *ssl = esp_transport_get_context_data(t);

    if (esp_tls_get_bytes_avail(ssl->tls) <= 0) {
        if ((poll = esp_transport_poll_read(t, timeout_ms)) <= 0) {
            return poll;
        }
    }
    ret = esp_tls_conn_read(ssl->tls, (unsigned char *)buffer, len);
    if (ret < 0) {
        ESP_LOGE(TAG, "esp_tls_conn_read error, errno=%s", strerror(errno));
        esp_transport_set_errors(t, ssl->tls->error_handle);
    }
    if (ret == 0) {
        ret = -1;
    }
    return ret;
}
