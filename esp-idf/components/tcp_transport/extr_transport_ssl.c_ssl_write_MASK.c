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
struct TYPE_4__ {TYPE_3__* tls; } ;
typedef  TYPE_1__ transport_ssl_t ;
typedef  int /*<<< orphan*/  esp_transport_handle_t ;
struct TYPE_5__ {int /*<<< orphan*/  error_handle; int /*<<< orphan*/  sockfd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  errno ; 
 int FUNC2 (TYPE_3__*,unsigned char const*,int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(esp_transport_handle_t t, const char *buffer, int len, int timeout_ms)
{
    int poll, ret;
    transport_ssl_t *ssl = FUNC3(t);

    if ((poll = FUNC4(t, timeout_ms)) <= 0) {
        FUNC1(TAG, "Poll timeout or error, errno=%s, fd=%d, timeout_ms=%d", FUNC6(errno), ssl->tls->sockfd, timeout_ms);
        return poll;
    }
    ret = FUNC2(ssl->tls, (const unsigned char *) buffer, len);
    if (ret < 0) {
        FUNC0(TAG, "esp_tls_conn_write error, errno=%s", FUNC6(errno));
        FUNC5(t, ssl->tls->error_handle);
    }
    return ret;
}