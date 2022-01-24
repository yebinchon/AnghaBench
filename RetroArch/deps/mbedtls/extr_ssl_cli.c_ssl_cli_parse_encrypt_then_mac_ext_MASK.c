#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ minor_ver; TYPE_2__* session_negotiate; TYPE_1__* conf; } ;
typedef  TYPE_3__ mbedtls_ssl_context ;
struct TYPE_7__ {int /*<<< orphan*/  encrypt_then_mac; } ;
struct TYPE_6__ {scalar_t__ encrypt_then_mac; } ;

/* Variables and functions */
 int MBEDTLS_ERR_SSL_BAD_HS_SERVER_HELLO ; 
 int /*<<< orphan*/  MBEDTLS_SSL_ALERT_LEVEL_FATAL ; 
 int /*<<< orphan*/  MBEDTLS_SSL_ALERT_MSG_HANDSHAKE_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ MBEDTLS_SSL_ETM_DISABLED ; 
 int /*<<< orphan*/  MBEDTLS_SSL_ETM_ENABLED ; 
 scalar_t__ MBEDTLS_SSL_MINOR_VERSION_0 ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2( mbedtls_ssl_context *ssl,
                                         const unsigned char *buf,
                                         size_t len )
{
    if( ssl->conf->encrypt_then_mac == MBEDTLS_SSL_ETM_DISABLED ||
        ssl->minor_ver == MBEDTLS_SSL_MINOR_VERSION_0 ||
        len != 0 )
    {
        FUNC0( 1, ( "non-matching encrypt-then-MAC extension" ) );
        FUNC1( ssl, MBEDTLS_SSL_ALERT_LEVEL_FATAL,
                                        MBEDTLS_SSL_ALERT_MSG_HANDSHAKE_FAILURE );
        return( MBEDTLS_ERR_SSL_BAD_HS_SERVER_HELLO );
    }

    ((void) buf);

    ssl->session_negotiate->encrypt_then_mac = MBEDTLS_SSL_ETM_ENABLED;

    return( 0 );
}