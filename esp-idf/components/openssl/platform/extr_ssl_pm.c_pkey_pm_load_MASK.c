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
struct pkey_pm {unsigned char* pkey; } ;
typedef  int /*<<< orphan*/  mbedtls_pk_context ;
struct TYPE_3__ {scalar_t__ pkey_pm; } ;
typedef  TYPE_1__ EVP_PKEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  SSL_PLATFORM_ERROR_LEVEL ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 int FUNC3 (unsigned char*,unsigned char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,unsigned char const*,int) ; 

int FUNC7(EVP_PKEY *pk, const unsigned char *buffer, int len)
{
    int ret;
    unsigned char *load_buf;
    struct pkey_pm *pkey_pm = (struct pkey_pm *)pk->pkey_pm;

    if (pkey_pm->pkey)
        FUNC1(pkey_pm->pkey);

    if (!pkey_pm->pkey) {
        pkey_pm->pkey = FUNC5(sizeof(mbedtls_pk_context));
        if (!pkey_pm->pkey) {
            FUNC0(SSL_PLATFORM_ERROR_LEVEL, "no enough memory > (pkey_pm->pkey)");
            goto no_mem;
        }
    }

    load_buf = FUNC5(len + 1);
    if (!load_buf) {
        FUNC0(SSL_PLATFORM_ERROR_LEVEL, "no enough memory > (load_buf)");
        goto failed;
    }

    FUNC6(load_buf, buffer, len);
    load_buf[len] = '\0';

    FUNC2(pkey_pm->pkey);

    ret = FUNC3(pkey_pm->pkey, load_buf, len + 1, NULL, 0);
    FUNC4(load_buf);

    if (ret) {
        FUNC0(SSL_PLATFORM_ERROR_LEVEL, "mbedtls_pk_parse_key return -0x%x", -ret);
        goto failed;
    }

    return 0;

failed:
    FUNC1(pkey_pm->pkey);
    FUNC4(pkey_pm->pkey);
    pkey_pm->pkey = NULL;
no_mem:
    return -1;
}