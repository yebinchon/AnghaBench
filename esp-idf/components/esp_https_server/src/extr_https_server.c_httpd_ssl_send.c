
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int httpd_handle_t ;
typedef int esp_tls_t ;


 int assert (int ) ;
 int esp_tls_conn_write (int *,char const*,size_t) ;
 int * httpd_sess_get_transport_ctx (int ,int) ;

__attribute__((used)) static int httpd_ssl_send(httpd_handle_t server, int sockfd, const char *buf, size_t buf_len, int flags)
{
    esp_tls_t *tls = httpd_sess_get_transport_ctx(server, sockfd);
    assert(tls != ((void*)0));
    return esp_tls_conn_write(tls, buf, buf_len);
}
