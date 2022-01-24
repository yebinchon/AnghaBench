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
struct TYPE_3__ {int /*<<< orphan*/  ssl; int /*<<< orphan*/  ctr_drbg; int /*<<< orphan*/  conf; int /*<<< orphan*/  entropy; int /*<<< orphan*/  clientkey; int /*<<< orphan*/  clientcert; int /*<<< orphan*/  cacert; int /*<<< orphan*/  serverkey; int /*<<< orphan*/  servercert; int /*<<< orphan*/ * cacert_ptr; } ;
typedef  TYPE_1__ esp_tls_t ;

/* Variables and functions */
 int /*<<< orphan*/ * global_cacert ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(esp_tls_t *tls)
{
    if (!tls) {
        return;
    }
    if (tls->cacert_ptr != global_cacert) {
        FUNC5(tls->cacert_ptr);
    }
    tls->cacert_ptr = NULL;
#ifdef CONFIG_ESP_TLS_SERVER
    mbedtls_x509_crt_free(&tls->servercert);
    mbedtls_pk_free(&tls->serverkey);
#endif
    FUNC5(&tls->cacert);
    FUNC5(&tls->clientcert);
    FUNC2(&tls->clientkey);
    FUNC1(&tls->entropy);
    FUNC3(&tls->conf);
    FUNC0(&tls->ctr_drbg);
    FUNC4(&tls->ssl);
}