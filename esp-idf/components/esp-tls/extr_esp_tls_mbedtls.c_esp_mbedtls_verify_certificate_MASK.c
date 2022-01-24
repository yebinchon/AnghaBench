#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  error_handle; int /*<<< orphan*/  ssl; } ;
typedef  TYPE_1__ esp_tls_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_TYPE_MBEDTLS_CERT_FLAGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,int) ; 

void FUNC5(esp_tls_t *tls)
{
    int flags;
    char buf[100];
    if ((flags = FUNC3(&tls->ssl)) != 0) {
        FUNC1(TAG, "Failed to verify peer certificate!");
        FUNC0(tls->error_handle, ERR_TYPE_MBEDTLS_CERT_FLAGS, flags);
        FUNC2(buf, sizeof(buf));
        FUNC4(buf, sizeof(buf), "  ! ", flags);
        FUNC1(TAG, "verification info: %s", buf);
    } else {
        FUNC1(TAG, "Certificate verified.");
    }
}