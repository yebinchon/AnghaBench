
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {scalar_t__ sock; } ;
typedef TYPE_1__ transport_tcp_t ;
struct timeval {int dummy; } ;
typedef int sock_errno ;
typedef int fd_set ;
typedef int esp_transport_handle_t ;


 int ESP_LOGE (int ,char*,int,int ,scalar_t__) ;
 scalar_t__ FD_ISSET (scalar_t__,int *) ;
 int FD_SET (scalar_t__,int *) ;
 int FD_ZERO (int *) ;
 int SOL_SOCKET ;
 int SO_ERROR ;
 int TAG ;
 TYPE_1__* esp_transport_get_context_data (int ) ;
 int esp_transport_utils_ms_to_timeval (int,struct timeval*) ;
 int getsockopt (scalar_t__,int ,int ,int*,int*) ;
 int select (scalar_t__,int *,int *,int *,struct timeval*) ;
 int strerror (int) ;

__attribute__((used)) static int tcp_poll_write(esp_transport_handle_t t, int timeout_ms)
{
    transport_tcp_t *tcp = esp_transport_get_context_data(t);
    int ret = -1;
    fd_set writeset;
    fd_set errset;
    FD_ZERO(&writeset);
    FD_ZERO(&errset);
    FD_SET(tcp->sock, &writeset);
    FD_SET(tcp->sock, &errset);
    struct timeval timeout;
    esp_transport_utils_ms_to_timeval(timeout_ms, &timeout);
    ret = select(tcp->sock + 1, ((void*)0), &writeset, &errset, &timeout);
    if (ret > 0 && FD_ISSET(tcp->sock, &errset)) {
        int sock_errno = 0;
        uint32_t optlen = sizeof(sock_errno);
        getsockopt(tcp->sock, SOL_SOCKET, SO_ERROR, &sock_errno, &optlen);
        ESP_LOGE(TAG, "tcp_poll_write select error %d, errno = %s, fd = %d", sock_errno, strerror(sock_errno), tcp->sock);
        ret = -1;
    }
    return ret;
}
