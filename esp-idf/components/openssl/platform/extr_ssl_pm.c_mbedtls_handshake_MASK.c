#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  state; } ;
typedef  TYPE_1__ mbedtls_ssl_context ;

/* Variables and functions */
 int /*<<< orphan*/  MBEDTLS_SSL_HANDSHAKE_OVER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSL_PLATFORM_DEBUG_LEVEL ; 
 int FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC2( mbedtls_ssl_context *ssl )
{
    int ret = 0;

    while (ssl->state != MBEDTLS_SSL_HANDSHAKE_OVER) {
        ret = FUNC1(ssl);

        FUNC0(SSL_PLATFORM_DEBUG_LEVEL, "ssl ret %d state %d", ret, ssl->state);

        if (ret != 0)
            break;
    }

    return ret;
}