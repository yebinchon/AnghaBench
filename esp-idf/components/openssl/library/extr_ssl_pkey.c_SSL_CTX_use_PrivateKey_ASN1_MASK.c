#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  int /*<<< orphan*/  EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  SSL_PKEY_ERROR_LEVEL ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned char const**,long) ; 

int FUNC4(int type, SSL_CTX *ctx,
                                const unsigned char *d, long len)
{
    int ret;
    EVP_PKEY *pk;

    pk = FUNC3(0, NULL, &d, len);
    if (!pk) {
        FUNC2(SSL_PKEY_ERROR_LEVEL, "d2i_PrivateKey() return NULL");
        goto failed1;
    }

    ret = FUNC1(ctx, pk);
    if (!ret) {
        FUNC2(SSL_PKEY_ERROR_LEVEL, "SSL_CTX_use_PrivateKey() return %d", ret);
        goto failed2;
    }

    return 1;

failed2:
    FUNC0(pk);
failed1:
    return 0;
}