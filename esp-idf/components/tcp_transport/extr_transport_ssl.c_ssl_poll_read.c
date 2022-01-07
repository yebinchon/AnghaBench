
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_5__ {TYPE_1__* tls; } ;
typedef TYPE_2__ transport_ssl_t ;
struct timeval {int dummy; } ;
typedef int sock_errno ;
typedef int fd_set ;
typedef int esp_transport_handle_t ;
struct TYPE_4__ {scalar_t__ sockfd; } ;


 int ESP_LOGE (int ,char*,int,int ,scalar_t__) ;
 scalar_t__ FD_ISSET (scalar_t__,int *) ;
 int FD_SET (scalar_t__,int *) ;
 int FD_ZERO (int *) ;
 int SOL_SOCKET ;
 int SO_ERROR ;
 int TAG ;
 TYPE_2__* esp_transport_get_context_data (int ) ;
 int esp_transport_utils_ms_to_timeval (int,struct timeval*) ;
 int getsockopt (scalar_t__,int ,int ,int*,int*) ;
 int select (scalar_t__,int *,int *,int *,struct timeval*) ;
 int strerror (int) ;

__attribute__((used)) static int ssl_poll_read(esp_transport_handle_t t, int timeout_ms)
{
    transport_ssl_t *ssl = esp_transport_get_context_data(t);
    int ret = -1;
    fd_set readset;
    fd_set errset;
    FD_ZERO(&readset);
    FD_ZERO(&errset);
    FD_SET(ssl->tls->sockfd, &readset);
    FD_SET(ssl->tls->sockfd, &errset);
    struct timeval timeout;
    esp_transport_utils_ms_to_timeval(timeout_ms, &timeout);

    ret = select(ssl->tls->sockfd + 1, &readset, ((void*)0), &errset, &timeout);
    if (ret > 0 && FD_ISSET(ssl->tls->sockfd, &errset)) {
        int sock_errno = 0;
        uint32_t optlen = sizeof(sock_errno);
        getsockopt(ssl->tls->sockfd, SOL_SOCKET, SO_ERROR, &sock_errno, &optlen);
        ESP_LOGE(TAG, "ssl_poll_read select error %d, errno = %s, fd = %d", sock_errno, strerror(sock_errno), ssl->tls->sockfd);
        ret = -1;
    }
    return ret;
}
