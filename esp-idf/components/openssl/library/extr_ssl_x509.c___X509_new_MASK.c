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
struct TYPE_8__ {int ref_counter; int /*<<< orphan*/  method; } ;
typedef  TYPE_1__ X509 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  SSL_PKEY_ERROR_LEVEL ; 
 int /*<<< orphan*/  SSL_X509_ERROR_LEVEL ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  new ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int) ; 

X509* FUNC5(X509 *ix)
{
    int ret;
    X509 *x;

    x = FUNC4(sizeof(X509));
    if (!x) {
        FUNC0(SSL_X509_ERROR_LEVEL, "no enough memory > (x)");
        goto no_mem;
    }

    x->ref_counter = 1;

    if (ix)
        x->method = ix->method;
    else
        x->method = FUNC2();

    ret = FUNC1(new, x, ix);
    if (ret) {
        FUNC0(SSL_PKEY_ERROR_LEVEL, "X509_METHOD_CALL(new) return %d", ret);
        goto failed;
    }

    return x;

failed:
    FUNC3(x);
no_mem:
    return NULL;
}