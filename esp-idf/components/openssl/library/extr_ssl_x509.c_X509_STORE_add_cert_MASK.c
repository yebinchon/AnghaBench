#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509_STORE ;
struct TYPE_6__ {struct TYPE_6__* client_CA; int /*<<< orphan*/  ref_counter; } ;
typedef  TYPE_1__ X509 ;
typedef  TYPE_1__ SSL_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

int FUNC2(X509_STORE *store, X509 *x) {

    x->ref_counter++;

    SSL_CTX *ctx = (SSL_CTX *)store;
    FUNC0(ctx);
    FUNC0(x);

    if (ctx->client_CA == x) {
        return 1;
    }

    if (ctx->client_CA!=NULL) {
        FUNC1(ctx->client_CA);
    }

    ctx->client_CA = x;
    return 1;
}