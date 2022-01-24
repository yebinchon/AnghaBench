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
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_3__ {int /*<<< orphan*/  dlen; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  SSL_PKEY_ERROR_LEVEL ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  load ; 

X509 * FUNC5(BIO *bp, X509 **cert, void *cb, void *u) {
    int m = 0;
    int ret;
    X509 *x;

    FUNC0(bp->data);
    FUNC0(bp->dlen);

    if (cert && *cert) {
        x = *cert;
    } else {
        x = FUNC4();
        if (!x) {
            FUNC1(SSL_PKEY_ERROR_LEVEL, "X509_new() return NULL");
            goto failed;
        }
        m = 1;
    }

    ret = FUNC2(load, x, bp->data, bp->dlen);
    if (ret) {
        FUNC1(SSL_PKEY_ERROR_LEVEL, "X509_METHOD_CALL(load) return %d", ret);
        goto failed;
    }

    return x;

failed:
    if (m) {
        FUNC3(x);
    }

    return NULL;
}