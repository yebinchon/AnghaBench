#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_3__* priv_data; } ;
typedef  TYPE_2__ URLContext ;
struct TYPE_5__ {scalar_t__ tcp; } ;
struct TYPE_7__ {scalar_t__ url_bio_method; TYPE_1__ tls_shared; scalar_t__ ctx; scalar_t__ ssl; } ;
typedef  TYPE_3__ TLSContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 

__attribute__((used)) static int FUNC6(URLContext *h)
{
    TLSContext *c = h->priv_data;
    if (c->ssl) {
        FUNC3(c->ssl);
        FUNC2(c->ssl);
    }
    if (c->ctx)
        FUNC1(c->ctx);
    if (c->tls_shared.tcp)
        FUNC5(c->tls_shared.tcp);
#if OPENSSL_VERSION_NUMBER >= 0x1010000fL
    if (c->url_bio_method)
        BIO_meth_free(c->url_bio_method);
#endif
    FUNC4();
    return 0;
}