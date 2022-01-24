#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct timeval {int dummy; } ;
struct TYPE_11__ {int conn_state; int sockfd; int is_tls; int /*<<< orphan*/  write; int /*<<< orphan*/  read; int /*<<< orphan*/  error_handle; int /*<<< orphan*/  wset; int /*<<< orphan*/  rset; int /*<<< orphan*/  server_fd; } ;
typedef  TYPE_1__ esp_tls_t ;
struct TYPE_12__ {int /*<<< orphan*/  timeout_ms; int /*<<< orphan*/  non_block; } ;
typedef  TYPE_2__ esp_tls_cfg_t ;
typedef  int /*<<< orphan*/  esp_err_t ;
typedef  int /*<<< orphan*/  error ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_TYPE_ESP ; 
 int /*<<< orphan*/  ERR_TYPE_SYSTEM ; 
 int /*<<< orphan*/  ESP_ERR_ESP_TLS_SOCKET_SETOPT_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ESP_OK ; 
#define  ESP_TLS_CONNECTING 131 
#define  ESP_TLS_FAIL 130 
#define  ESP_TLS_HANDSHAKE 129 
#define  ESP_TLS_INIT 128 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_ERROR ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  _esp_tls_read ; 
 int /*<<< orphan*/  _esp_tls_write ; 
 int /*<<< orphan*/  FUNC6 (char const*,int,TYPE_2__ const*,TYPE_1__*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC7 (char const*,int,int,int*,TYPE_1__*,TYPE_2__ const*) ; 
 int FUNC8 (TYPE_1__*,TYPE_2__ const*) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct timeval*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct timeval*) ; 
 int /*<<< orphan*/  tcp_read ; 
 int /*<<< orphan*/  tcp_write ; 

__attribute__((used)) static int FUNC13(const char *hostname, int hostlen, int port, const esp_tls_cfg_t *cfg, esp_tls_t *tls)
{
    if (!tls) {
        FUNC2(TAG, "empty esp_tls parameter");
        return -1;
    }
    esp_err_t esp_ret;
    /* These states are used to keep a tab on connection progress in case of non-blocking connect,
    and in case of blocking connect these cases will get executed one after the other */
    switch (tls->conn_state) {
    case ESP_TLS_INIT:
        tls->sockfd = -1;
        if (cfg != NULL) {
#ifdef CONFIG_ESP_TLS_USING_MBEDTLS
            mbedtls_net_init(&tls->server_fd);
#endif
            tls->is_tls = true;
        }
        if ((esp_ret = FUNC7(hostname, hostlen, port, &tls->sockfd, tls, cfg)) != ESP_OK) {
            FUNC0(tls->error_handle, ERR_TYPE_ESP, esp_ret);
            return -1;
        }
        if (!cfg) {
            tls->read = tcp_read;
            tls->write = tcp_write;
            FUNC1(TAG, "non-tls connection established");
            return 1;
        }
        if (cfg->non_block) {
            FUNC5(&tls->rset);
            FUNC4(tls->sockfd, &tls->rset);
            tls->wset = tls->rset;
        }
        tls->conn_state = ESP_TLS_CONNECTING;
    /* falls through */
    case ESP_TLS_CONNECTING:
        if (cfg->non_block) {
            FUNC1(TAG, "connecting...");
            struct timeval tv;
            FUNC11(cfg->timeout_ms, &tv);

            /* In case of non-blocking I/O, we use the select() API to check whether
               connection has been estbalished or not*/
            if (FUNC12(tls->sockfd + 1, &tls->rset, &tls->wset, NULL,
                       cfg->timeout_ms ? &tv : NULL) == 0) {
                FUNC1(TAG, "select() timed out");
                return 0;
            }
            if (FUNC3(tls->sockfd, &tls->rset) || FUNC3(tls->sockfd, &tls->wset)) {
                int error;
                unsigned int len = sizeof(error);
                /* pending error check */
                if (FUNC9(tls->sockfd, SOL_SOCKET, SO_ERROR, &error, &len) < 0) {
                    FUNC1(TAG, "Non blocking connect failed");
                    FUNC0(tls->error_handle, ERR_TYPE_SYSTEM, errno);
                    FUNC0(tls->error_handle, ERR_TYPE_ESP, ESP_ERR_ESP_TLS_SOCKET_SETOPT_FAILED);
                    tls->conn_state = ESP_TLS_FAIL;
                    return -1;
                }
            }
        }
        /* By now, the connection has been established */
        esp_ret = FUNC6(hostname, hostlen, cfg, tls);
        if (esp_ret != ESP_OK) {
            FUNC2(TAG, "create_ssl_handle failed");
            FUNC0(tls->error_handle, ERR_TYPE_ESP, esp_ret);
            tls->conn_state = ESP_TLS_FAIL;
            return -1;
        }
        tls->read = _esp_tls_read;
        tls->write = _esp_tls_write;
        tls->conn_state = ESP_TLS_HANDSHAKE;
    /* falls through */
    case ESP_TLS_HANDSHAKE:
        FUNC1(TAG, "handshake in progress...");
        return FUNC8(tls, cfg);
        break;
    case ESP_TLS_FAIL:
        FUNC2(TAG, "failed to open a new connection");;
        break;
    default:
        FUNC2(TAG, "invalid esp-tls state");
        break;
    }
    return -1;
}