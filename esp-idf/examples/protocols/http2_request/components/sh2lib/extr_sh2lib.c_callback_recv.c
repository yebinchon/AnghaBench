
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct sh2lib_handle {int http2_tls; } ;
typedef int ssize_t ;
typedef int nghttp2_session ;


 int ESP_TLS_ERR_SSL_WANT_READ ;
 int ESP_TLS_ERR_SSL_WANT_WRITE ;
 int NGHTTP2_ERR_CALLBACK_FAILURE ;
 int NGHTTP2_ERR_EOF ;
 int NGHTTP2_ERR_WOULDBLOCK ;
 int esp_tls_conn_read (int ,char*,int) ;

__attribute__((used)) static ssize_t callback_recv(nghttp2_session *session, uint8_t *buf,
                             size_t length, int flags, void *user_data)
{
    struct sh2lib_handle *hd = user_data;
    int rv;
    rv = esp_tls_conn_read(hd->http2_tls, (char *)buf, (int)length);
    if (rv < 0) {
        if (rv == ESP_TLS_ERR_SSL_WANT_READ || rv == ESP_TLS_ERR_SSL_WANT_WRITE) {
            rv = NGHTTP2_ERR_WOULDBLOCK;
        } else {
            rv = NGHTTP2_ERR_CALLBACK_FAILURE;
        }
    } else if (rv == 0) {
        rv = NGHTTP2_ERR_EOF;
    }
    return rv;
}
