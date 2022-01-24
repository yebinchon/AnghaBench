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
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  SSL_PKEY_ERROR_LEVEL ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,unsigned char const*,int) ; 

int FUNC4(SSL *ssl, int len,
                             const unsigned char *d)
{
    int ret;
    X509 *x;

    x = FUNC3(NULL, d, len);
    if (!x) {
        FUNC0(SSL_PKEY_ERROR_LEVEL, "d2i_X509() return NULL");
        goto failed1;
    }

    ret = FUNC1(ssl, x);
    if (!ret) {
        FUNC0(SSL_PKEY_ERROR_LEVEL, "SSL_use_certificate() return %d", ret);
        goto failed2;
    }

    return 1;

failed2:
    FUNC2(x);
failed1:
    return 0;
}