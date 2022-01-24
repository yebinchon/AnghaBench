#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mbedtls_ssl_session ;
struct TYPE_7__ {TYPE_2__* handshake; int /*<<< orphan*/ * session_negotiate; TYPE_1__* conf; } ;
typedef  TYPE_3__ mbedtls_ssl_context ;
struct TYPE_6__ {int resume; } ;
struct TYPE_5__ {scalar_t__ endpoint; } ;

/* Variables and functions */
 int MBEDTLS_ERR_SSL_BAD_INPUT_DATA ; 
 scalar_t__ MBEDTLS_SSL_IS_CLIENT ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

int FUNC1( mbedtls_ssl_context *ssl, const mbedtls_ssl_session *session )
{
    int ret;

    if( ssl == NULL ||
        session == NULL ||
        ssl->session_negotiate == NULL ||
        ssl->conf->endpoint != MBEDTLS_SSL_IS_CLIENT )
    {
        return( MBEDTLS_ERR_SSL_BAD_INPUT_DATA );
    }

    if( ( ret = FUNC0( ssl->session_negotiate, session ) ) != 0 )
        return( ret );

    ssl->handshake->resume = 1;

    return( 0 );
}