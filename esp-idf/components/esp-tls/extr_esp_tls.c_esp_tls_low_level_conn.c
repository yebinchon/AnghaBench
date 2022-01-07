
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct timeval {int dummy; } ;
struct TYPE_11__ {int conn_state; int sockfd; int is_tls; int write; int read; int error_handle; int wset; int rset; int server_fd; } ;
typedef TYPE_1__ esp_tls_t ;
struct TYPE_12__ {int timeout_ms; int non_block; } ;
typedef TYPE_2__ esp_tls_cfg_t ;
typedef int esp_err_t ;
typedef int error ;


 int ERR_TYPE_ESP ;
 int ERR_TYPE_SYSTEM ;
 int ESP_ERR_ESP_TLS_SOCKET_SETOPT_FAILED ;
 int ESP_INT_EVENT_TRACKER_CAPTURE (int ,int ,int ) ;
 int ESP_LOGD (int ,char*) ;
 int ESP_LOGE (int ,char*) ;
 int ESP_OK ;




 int FD_ISSET (int,int *) ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int SOL_SOCKET ;
 int SO_ERROR ;
 int TAG ;
 int _esp_tls_read ;
 int _esp_tls_write ;
 int create_ssl_handle (char const*,int,TYPE_2__ const*,TYPE_1__*) ;
 int errno ;
 int esp_tcp_connect (char const*,int,int,int*,TYPE_1__*,TYPE_2__ const*) ;
 int esp_tls_handshake (TYPE_1__*,TYPE_2__ const*) ;
 int getsockopt (int,int ,int ,int*,unsigned int*) ;
 int mbedtls_net_init (int *) ;
 int ms_to_timeval (int ,struct timeval*) ;
 int select (int ,int *,int *,int *,struct timeval*) ;
 int tcp_read ;
 int tcp_write ;

__attribute__((used)) static int esp_tls_low_level_conn(const char *hostname, int hostlen, int port, const esp_tls_cfg_t *cfg, esp_tls_t *tls)
{
    if (!tls) {
        ESP_LOGE(TAG, "empty esp_tls parameter");
        return -1;
    }
    esp_err_t esp_ret;


    switch (tls->conn_state) {
    case 128:
        tls->sockfd = -1;
        if (cfg != ((void*)0)) {



            tls->is_tls = 1;
        }
        if ((esp_ret = esp_tcp_connect(hostname, hostlen, port, &tls->sockfd, tls, cfg)) != ESP_OK) {
            ESP_INT_EVENT_TRACKER_CAPTURE(tls->error_handle, ERR_TYPE_ESP, esp_ret);
            return -1;
        }
        if (!cfg) {
            tls->read = tcp_read;
            tls->write = tcp_write;
            ESP_LOGD(TAG, "non-tls connection established");
            return 1;
        }
        if (cfg->non_block) {
            FD_ZERO(&tls->rset);
            FD_SET(tls->sockfd, &tls->rset);
            tls->wset = tls->rset;
        }
        tls->conn_state = 131;

    case 131:
        if (cfg->non_block) {
            ESP_LOGD(TAG, "connecting...");
            struct timeval tv;
            ms_to_timeval(cfg->timeout_ms, &tv);



            if (select(tls->sockfd + 1, &tls->rset, &tls->wset, ((void*)0),
                       cfg->timeout_ms ? &tv : ((void*)0)) == 0) {
                ESP_LOGD(TAG, "select() timed out");
                return 0;
            }
            if (FD_ISSET(tls->sockfd, &tls->rset) || FD_ISSET(tls->sockfd, &tls->wset)) {
                int error;
                unsigned int len = sizeof(error);

                if (getsockopt(tls->sockfd, SOL_SOCKET, SO_ERROR, &error, &len) < 0) {
                    ESP_LOGD(TAG, "Non blocking connect failed");
                    ESP_INT_EVENT_TRACKER_CAPTURE(tls->error_handle, ERR_TYPE_SYSTEM, errno);
                    ESP_INT_EVENT_TRACKER_CAPTURE(tls->error_handle, ERR_TYPE_ESP, ESP_ERR_ESP_TLS_SOCKET_SETOPT_FAILED);
                    tls->conn_state = 130;
                    return -1;
                }
            }
        }

        esp_ret = create_ssl_handle(hostname, hostlen, cfg, tls);
        if (esp_ret != ESP_OK) {
            ESP_LOGE(TAG, "create_ssl_handle failed");
            ESP_INT_EVENT_TRACKER_CAPTURE(tls->error_handle, ERR_TYPE_ESP, esp_ret);
            tls->conn_state = 130;
            return -1;
        }
        tls->read = _esp_tls_read;
        tls->write = _esp_tls_write;
        tls->conn_state = 129;

    case 129:
        ESP_LOGD(TAG, "handshake in progress...");
        return esp_tls_handshake(tls, cfg);
        break;
    case 130:
        ESP_LOGE(TAG, "failed to open a new connection");;
        break;
    default:
        ESP_LOGE(TAG, "invalid esp-tls state");
        break;
    }
    return -1;
}
