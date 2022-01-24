#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tv ;
struct timeval {int dummy; } ;
struct sockaddr_in6 {scalar_t__ sin6_family; void* sin6_port; } ;
struct sockaddr_in {void* sin_port; } ;
struct addrinfo {scalar_t__ ai_family; int /*<<< orphan*/  ai_addrlen; scalar_t__ ai_addr; int /*<<< orphan*/  ai_protocol; int /*<<< orphan*/  ai_socktype; } ;
struct TYPE_5__ {int /*<<< orphan*/  error_handle; } ;
typedef  TYPE_1__ esp_tls_t ;
struct TYPE_6__ {scalar_t__ timeout_ms; scalar_t__ non_block; } ;
typedef  TYPE_2__ esp_tls_cfg_t ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 scalar_t__ AF_INET ; 
 scalar_t__ AF_INET6 ; 
 scalar_t__ EINPROGRESS ; 
 int /*<<< orphan*/  ERR_TYPE_SYSTEM ; 
 scalar_t__ ESP_ERR_ESP_TLS_CANNOT_CREATE_SOCKET ; 
 scalar_t__ ESP_ERR_ESP_TLS_FAILED_CONNECT_TO_HOST ; 
 scalar_t__ ESP_ERR_ESP_TLS_UNSUPPORTED_PROTOCOL_FAMILY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,scalar_t__,...) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  F_GETFL ; 
 int /*<<< orphan*/  F_SETFL ; 
 int O_NONBLOCK ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_RCVTIMEO ; 
 int /*<<< orphan*/  SO_SNDTIMEO ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,void*,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct addrinfo*) ; 
 void* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,struct timeval*) ; 
 scalar_t__ FUNC8 (char const*,int,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timeval*,int) ; 
 int FUNC10 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static esp_err_t FUNC11(const char *host, int hostlen, int port, int *sockfd, const esp_tls_t *tls, const esp_tls_cfg_t *cfg)
{
    esp_err_t ret;
    struct addrinfo *addrinfo;
    if ((ret = FUNC8(host, hostlen, &addrinfo)) != ESP_OK) {
        return ret;
    }

    int fd = FUNC10(addrinfo->ai_family, addrinfo->ai_socktype, addrinfo->ai_protocol);
    if (fd < 0) {
        FUNC1(TAG, "Failed to create socket (family %d socktype %d protocol %d)", addrinfo->ai_family, addrinfo->ai_socktype, addrinfo->ai_protocol);
        FUNC0(tls->error_handle, ERR_TYPE_SYSTEM, errno);
        ret = ESP_ERR_ESP_TLS_CANNOT_CREATE_SOCKET;
        goto err_freeaddr;
    }

    void *addr_ptr;
    if (addrinfo->ai_family == AF_INET) {
        struct sockaddr_in *p = (struct sockaddr_in *)addrinfo->ai_addr;
        p->sin_port = FUNC6(port);
        addr_ptr = p;
    } else if (addrinfo->ai_family == AF_INET6) {
        struct sockaddr_in6 *p = (struct sockaddr_in6 *)addrinfo->ai_addr;
        p->sin6_port = FUNC6(port);
        p->sin6_family = AF_INET6;
        addr_ptr = p;
    } else {
        FUNC1(TAG, "Unsupported protocol family %d", addrinfo->ai_family);
        ret = ESP_ERR_ESP_TLS_UNSUPPORTED_PROTOCOL_FAMILY;
        goto err_freesocket;
    }

    if (cfg) {
        if (cfg->timeout_ms >= 0) {
            struct timeval tv;
            FUNC7(cfg->timeout_ms, &tv);
            FUNC9(fd, SOL_SOCKET, SO_RCVTIMEO, &tv, sizeof(tv));
            FUNC9(fd, SOL_SOCKET, SO_SNDTIMEO, &tv, sizeof(tv));
        }
        if (cfg->non_block) {
            int flags = FUNC4(fd, F_GETFL, 0);
            FUNC4(fd, F_SETFL, flags | O_NONBLOCK);
        }
    }

    ret = FUNC3(fd, addr_ptr, addrinfo->ai_addrlen);
    if (ret < 0 && !(errno == EINPROGRESS && cfg && cfg->non_block)) {

        FUNC1(TAG, "Failed to connnect to host (errno %d)", errno);
        FUNC0(tls->error_handle, ERR_TYPE_SYSTEM, errno);
        ret = ESP_ERR_ESP_TLS_FAILED_CONNECT_TO_HOST;
        goto err_freesocket;
    }

    *sockfd = fd;
    FUNC5(addrinfo);
    return ESP_OK;

err_freesocket:
    FUNC2(fd);
err_freeaddr:
    FUNC5(addrinfo);
    return ret;
}