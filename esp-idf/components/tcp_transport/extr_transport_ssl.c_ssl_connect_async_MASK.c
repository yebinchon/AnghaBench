#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int timeout_ms; int non_block; } ;
struct TYPE_4__ {scalar_t__ conn_state; int ssl_initialized; int /*<<< orphan*/  tls; TYPE_3__ cfg; } ;
typedef  TYPE_1__ transport_ssl_t ;
typedef  int /*<<< orphan*/  esp_transport_handle_t ;

/* Variables and functions */
 scalar_t__ TRANS_SSL_CONNECTING ; 
 scalar_t__ TRANS_SSL_INIT ; 
 int FUNC0 (char const*,int /*<<< orphan*/ ,int,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

__attribute__((used)) static int FUNC4(esp_transport_handle_t t, const char *host, int port, int timeout_ms)
{
    transport_ssl_t *ssl = FUNC2(t);
    if (ssl->conn_state == TRANS_SSL_INIT) {
        ssl->cfg.timeout_ms = timeout_ms;
        ssl->cfg.non_block = true;
        ssl->ssl_initialized = true;
        ssl->tls = FUNC1();
        if (!ssl->tls) {
            return -1;
        }
        ssl->conn_state = TRANS_SSL_CONNECTING;
    }
    if (ssl->conn_state == TRANS_SSL_CONNECTING) {
        return FUNC0(host, FUNC3(host), port, &ssl->cfg, ssl->tls);
    }
    return 0;
}