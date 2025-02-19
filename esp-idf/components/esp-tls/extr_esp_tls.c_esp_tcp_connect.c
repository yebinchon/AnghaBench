
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tv ;
struct timeval {int dummy; } ;
struct sockaddr_in6 {scalar_t__ sin6_family; void* sin6_port; } ;
struct sockaddr_in {void* sin_port; } ;
struct addrinfo {scalar_t__ ai_family; int ai_addrlen; scalar_t__ ai_addr; int ai_protocol; int ai_socktype; } ;
struct TYPE_5__ {int error_handle; } ;
typedef TYPE_1__ esp_tls_t ;
struct TYPE_6__ {scalar_t__ timeout_ms; scalar_t__ non_block; } ;
typedef TYPE_2__ esp_tls_cfg_t ;
typedef scalar_t__ esp_err_t ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 scalar_t__ EINPROGRESS ;
 int ERR_TYPE_SYSTEM ;
 scalar_t__ ESP_ERR_ESP_TLS_CANNOT_CREATE_SOCKET ;
 scalar_t__ ESP_ERR_ESP_TLS_FAILED_CONNECT_TO_HOST ;
 scalar_t__ ESP_ERR_ESP_TLS_UNSUPPORTED_PROTOCOL_FAMILY ;
 int ESP_INT_EVENT_TRACKER_CAPTURE (int ,int ,scalar_t__) ;
 int ESP_LOGE (int ,char*,scalar_t__,...) ;
 scalar_t__ ESP_OK ;
 int F_GETFL ;
 int F_SETFL ;
 int O_NONBLOCK ;
 int SOL_SOCKET ;
 int SO_RCVTIMEO ;
 int SO_SNDTIMEO ;
 int TAG ;
 int close (int) ;
 scalar_t__ connect (int,void*,int ) ;
 scalar_t__ errno ;
 int fcntl (int,int ,int) ;
 int freeaddrinfo (struct addrinfo*) ;
 void* htons (int) ;
 int ms_to_timeval (scalar_t__,struct timeval*) ;
 scalar_t__ resolve_host_name (char const*,int,struct addrinfo**) ;
 int setsockopt (int,int ,int ,struct timeval*,int) ;
 int socket (scalar_t__,int ,int ) ;

__attribute__((used)) static esp_err_t esp_tcp_connect(const char *host, int hostlen, int port, int *sockfd, const esp_tls_t *tls, const esp_tls_cfg_t *cfg)
{
    esp_err_t ret;
    struct addrinfo *addrinfo;
    if ((ret = resolve_host_name(host, hostlen, &addrinfo)) != ESP_OK) {
        return ret;
    }

    int fd = socket(addrinfo->ai_family, addrinfo->ai_socktype, addrinfo->ai_protocol);
    if (fd < 0) {
        ESP_LOGE(TAG, "Failed to create socket (family %d socktype %d protocol %d)", addrinfo->ai_family, addrinfo->ai_socktype, addrinfo->ai_protocol);
        ESP_INT_EVENT_TRACKER_CAPTURE(tls->error_handle, ERR_TYPE_SYSTEM, errno);
        ret = ESP_ERR_ESP_TLS_CANNOT_CREATE_SOCKET;
        goto err_freeaddr;
    }

    void *addr_ptr;
    if (addrinfo->ai_family == AF_INET) {
        struct sockaddr_in *p = (struct sockaddr_in *)addrinfo->ai_addr;
        p->sin_port = htons(port);
        addr_ptr = p;
    } else if (addrinfo->ai_family == AF_INET6) {
        struct sockaddr_in6 *p = (struct sockaddr_in6 *)addrinfo->ai_addr;
        p->sin6_port = htons(port);
        p->sin6_family = AF_INET6;
        addr_ptr = p;
    } else {
        ESP_LOGE(TAG, "Unsupported protocol family %d", addrinfo->ai_family);
        ret = ESP_ERR_ESP_TLS_UNSUPPORTED_PROTOCOL_FAMILY;
        goto err_freesocket;
    }

    if (cfg) {
        if (cfg->timeout_ms >= 0) {
            struct timeval tv;
            ms_to_timeval(cfg->timeout_ms, &tv);
            setsockopt(fd, SOL_SOCKET, SO_RCVTIMEO, &tv, sizeof(tv));
            setsockopt(fd, SOL_SOCKET, SO_SNDTIMEO, &tv, sizeof(tv));
        }
        if (cfg->non_block) {
            int flags = fcntl(fd, F_GETFL, 0);
            fcntl(fd, F_SETFL, flags | O_NONBLOCK);
        }
    }

    ret = connect(fd, addr_ptr, addrinfo->ai_addrlen);
    if (ret < 0 && !(errno == EINPROGRESS && cfg && cfg->non_block)) {

        ESP_LOGE(TAG, "Failed to connnect to host (errno %d)", errno);
        ESP_INT_EVENT_TRACKER_CAPTURE(tls->error_handle, ERR_TYPE_SYSTEM, errno);
        ret = ESP_ERR_ESP_TLS_FAILED_CONNECT_TO_HOST;
        goto err_freesocket;
    }

    *sockfd = fd;
    freeaddrinfo(addrinfo);
    return ESP_OK;

err_freesocket:
    close(fd);
err_freeaddr:
    freeaddrinfo(addrinfo);
    return ret;
}
