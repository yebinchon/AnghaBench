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
typedef  int /*<<< orphan*/  X509 ;
struct TYPE_6__ {int /*<<< orphan*/ * pkey; int /*<<< orphan*/ * x509; } ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  TYPE_1__ CERT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_CERT_ERROR_LEVEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* FUNC5 (int) ; 

CERT *FUNC6(CERT *ic)
{
    CERT *cert;

    X509 *ix;
    EVP_PKEY *ipk;

    cert = FUNC5(sizeof(CERT));
    if (!cert) {
        FUNC1(SSL_CERT_ERROR_LEVEL, "no enough memory > (cert)");
        goto no_mem;
    }

    if (ic) {
        ipk = ic->pkey;
        ix = ic->x509;
    } else {
        ipk = NULL;
        ix = NULL;
    }

    cert->pkey = FUNC2(ipk);
    if (!cert->pkey) {
        FUNC1(SSL_CERT_ERROR_LEVEL, "__EVP_PKEY_new() return NULL");
        goto pkey_err;
    }

    cert->x509 = FUNC3(ix);
    if (!cert->x509) {
        FUNC1(SSL_CERT_ERROR_LEVEL, "__X509_new() return NULL");
        goto x509_err;
    }

    return cert;

x509_err:
    FUNC0(cert->pkey);
pkey_err:
    FUNC4(cert);
no_mem:
    return NULL;
}