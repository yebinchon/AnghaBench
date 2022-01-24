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
struct x509_pm {unsigned char* x509_crt; } ;
typedef  int /*<<< orphan*/  mbedtls_x509_crt ;
struct TYPE_3__ {scalar_t__ x509_pm; } ;
typedef  TYPE_1__ X509 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  SSL_PLATFORM_ERROR_LEVEL ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 int FUNC3 (unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*) ; 
 void* FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,unsigned char const*,int) ; 

int FUNC7(X509 *x, const unsigned char *buffer, int len)
{
    int ret;
    unsigned char *load_buf;
    struct x509_pm *x509_pm = (struct x509_pm *)x->x509_pm;

	if (x509_pm->x509_crt)
        FUNC1(x509_pm->x509_crt);

    if (!x509_pm->x509_crt) {
        x509_pm->x509_crt = FUNC5(sizeof(mbedtls_x509_crt));
        if (!x509_pm->x509_crt) {
            FUNC0(SSL_PLATFORM_ERROR_LEVEL, "no enough memory > (x509_pm->x509_crt)");
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

    FUNC2(x509_pm->x509_crt);

    ret = FUNC3(x509_pm->x509_crt, load_buf, len + 1);
    FUNC4(load_buf);

    if (ret) {
        FUNC0(SSL_PLATFORM_ERROR_LEVEL, "mbedtls_x509_crt_parse return -0x%x", -ret);
        goto failed;
    }

    return 0;

failed:
    FUNC1(x509_pm->x509_crt);
    FUNC4(x509_pm->x509_crt);
    x509_pm->x509_crt = NULL;
no_mem:
    return -1;
}