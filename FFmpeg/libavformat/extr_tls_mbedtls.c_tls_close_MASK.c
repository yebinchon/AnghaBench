#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_5__ {int /*<<< orphan*/  entropy_context; int /*<<< orphan*/  ctr_drbg_context; int /*<<< orphan*/  ssl_config; int /*<<< orphan*/  ssl_context; int /*<<< orphan*/  own_cert; int /*<<< orphan*/  ca_cert; int /*<<< orphan*/  priv_key; } ;
typedef  TYPE_2__ TLSContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(URLContext *h)
{
    TLSContext *tls_ctx = h->priv_data;

    FUNC3(&tls_ctx->ssl_context);
    FUNC2(&tls_ctx->priv_key);
    FUNC6(&tls_ctx->ca_cert);
    FUNC6(&tls_ctx->own_cert);
    FUNC5(&tls_ctx->ssl_context);
    FUNC4(&tls_ctx->ssl_config);
    FUNC0(&tls_ctx->ctr_drbg_context);
    FUNC1(&tls_ctx->entropy_context);

    return 0;
}