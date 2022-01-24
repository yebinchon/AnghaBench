#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_3__* tls; } ;
typedef  TYPE_1__ transport_ssl_t ;
typedef  int /*<<< orphan*/  esp_transport_handle_t ;
struct TYPE_6__ {int /*<<< orphan*/  error_handle; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  errno ; 
 int FUNC1 (TYPE_3__*,unsigned char*,int) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(esp_transport_handle_t t, char *buffer, int len, int timeout_ms)
{
    int poll, ret;
    transport_ssl_t *ssl = FUNC3(t);

    if (FUNC2(ssl->tls) <= 0) {
        if ((poll = FUNC4(t, timeout_ms)) <= 0) {
            return poll;
        }
    }
    ret = FUNC1(ssl->tls, (unsigned char *)buffer, len);
    if (ret < 0) {
        FUNC0(TAG, "esp_tls_conn_read error, errno=%s", FUNC6(errno));
        FUNC5(t, ssl->tls->error_handle);
    }
    if (ret == 0) {
        ret = -1;
    }
    return ret;
}