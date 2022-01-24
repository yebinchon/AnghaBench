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
struct TYPE_3__ {scalar_t__ priv_ctx; scalar_t__ priv_ssl; } ;
typedef  TYPE_1__ esp_tls_t ;
typedef  int /*<<< orphan*/  WOLFSSL_CTX ;
typedef  int /*<<< orphan*/  WOLFSSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(esp_tls_t *tls)
{
    if (!tls) {
        return;
    }
    FUNC3( (WOLFSSL *)tls->priv_ssl);
    FUNC2( (WOLFSSL *)tls->priv_ssl);
    FUNC0( (WOLFSSL_CTX *)tls->priv_ctx);
    FUNC1();
}