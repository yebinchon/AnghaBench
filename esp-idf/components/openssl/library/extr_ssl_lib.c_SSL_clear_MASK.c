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
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  SSL_LIB_ERROR_LEVEL ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  free ; 
 int /*<<< orphan*/  new ; 

int FUNC4(SSL *ssl)
{
    int ret;

    FUNC0(ssl);

    ret = FUNC3(ssl);
    if (1 != ret) {
        FUNC1(SSL_LIB_ERROR_LEVEL, "SSL_shutdown return %d", ret);
        goto failed1;
    }

    FUNC2(free, ssl);

    ret = FUNC2(new, ssl);
    if (!ret) {
        FUNC1(SSL_LIB_ERROR_LEVEL, "SSL_METHOD_CALL(new) return %d", ret);
        goto failed1;
    }

    return 1;

failed1:
    return ret;
}