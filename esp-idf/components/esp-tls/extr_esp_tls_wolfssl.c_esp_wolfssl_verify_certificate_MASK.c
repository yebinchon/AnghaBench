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
struct TYPE_3__ {int /*<<< orphan*/  error_handle; scalar_t__ priv_ssl; } ;
typedef  TYPE_1__ esp_tls_t ;
typedef  int /*<<< orphan*/  WOLFSSL ;

/* Variables and functions */
 int /*<<< orphan*/  ERR_TYPE_WOLFSSL_CERT_FLAGS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TAG ; 
 int WOLFSSL_SUCCESS ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(esp_tls_t *tls)
{
    int flags;
    if ((flags = FUNC3( (WOLFSSL *)tls->priv_ssl)) != WOLFSSL_SUCCESS) {
        FUNC1(TAG, "Failed to verify peer certificate %d!", flags);
        FUNC0(tls->error_handle, ERR_TYPE_WOLFSSL_CERT_FLAGS, flags);
    } else {
        FUNC2(TAG, "Certificate verified.");
    }
}