#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  method; } ;
typedef  TYPE_1__ EVP_PKEY ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  SSL_PKEY_ERROR_LEVEL ; 
 int /*<<< orphan*/  new ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int) ; 

EVP_PKEY* FUNC5(EVP_PKEY *ipk)
{
    int ret;
    EVP_PKEY *pkey;

    pkey = FUNC4(sizeof(EVP_PKEY));
    if (!pkey) {
        FUNC2(SSL_PKEY_ERROR_LEVEL, "no enough memory > (pkey)");
        goto no_mem;
    }

    if (ipk) {
        pkey->method = ipk->method;
    } else {
        pkey->method = FUNC1();
    }

    ret = FUNC0(new, pkey, ipk);
    if (ret) {
        FUNC2(SSL_PKEY_ERROR_LEVEL, "EVP_PKEY_METHOD_CALL(new) return %d", ret);
        goto failed;
    }

    return pkey;

failed:
    FUNC3(pkey);
no_mem:
    return NULL;
}