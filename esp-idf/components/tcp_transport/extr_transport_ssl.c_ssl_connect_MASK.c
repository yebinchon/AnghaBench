#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int timeout_ms; } ;
struct TYPE_7__ {int ssl_initialized; TYPE_3__* tls; TYPE_4__ cfg; } ;
typedef  TYPE_1__ transport_ssl_t ;
typedef  int /*<<< orphan*/  esp_transport_handle_t ;
struct TYPE_8__ {int /*<<< orphan*/  error_handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ ,int,TYPE_4__*,TYPE_3__*) ; 
 TYPE_3__* FUNC3 () ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 

__attribute__((used)) static int FUNC7(esp_transport_handle_t t, const char *host, int port, int timeout_ms)
{
    transport_ssl_t *ssl = FUNC4(t);

    ssl->cfg.timeout_ms = timeout_ms;
    ssl->ssl_initialized = true;
    ssl->tls = FUNC3();
    if (FUNC2(host, FUNC6(host), port, &ssl->cfg, ssl->tls) < 0) {
        FUNC0(TAG, "Failed to open a new connection");
        FUNC5(t, ssl->tls->error_handle);
        FUNC1(ssl->tls);
        ssl->tls = NULL;
        return -1;
    }

    return 0;
}