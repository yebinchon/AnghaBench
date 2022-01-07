
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int timeout_ms; int non_block; } ;
struct TYPE_4__ {scalar_t__ conn_state; int ssl_initialized; int tls; TYPE_3__ cfg; } ;
typedef TYPE_1__ transport_ssl_t ;
typedef int esp_transport_handle_t ;


 scalar_t__ TRANS_SSL_CONNECTING ;
 scalar_t__ TRANS_SSL_INIT ;
 int esp_tls_conn_new_async (char const*,int ,int,TYPE_3__*,int ) ;
 int esp_tls_init () ;
 TYPE_1__* esp_transport_get_context_data (int ) ;
 int strlen (char const*) ;

__attribute__((used)) static int ssl_connect_async(esp_transport_handle_t t, const char *host, int port, int timeout_ms)
{
    transport_ssl_t *ssl = esp_transport_get_context_data(t);
    if (ssl->conn_state == TRANS_SSL_INIT) {
        ssl->cfg.timeout_ms = timeout_ms;
        ssl->cfg.non_block = 1;
        ssl->ssl_initialized = 1;
        ssl->tls = esp_tls_init();
        if (!ssl->tls) {
            return -1;
        }
        ssl->conn_state = TRANS_SSL_CONNECTING;
    }
    if (ssl->conn_state == TRANS_SSL_CONNECTING) {
        return esp_tls_conn_new_async(host, strlen(host), port, &ssl->cfg, ssl->tls);
    }
    return 0;
}
