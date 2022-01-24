#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  padbuf ;
struct TYPE_11__ {int /*<<< orphan*/  master; } ;
typedef  TYPE_2__ mbedtls_ssl_session ;
struct TYPE_12__ {TYPE_1__* handshake; TYPE_2__* session; TYPE_2__* session_negotiate; } ;
typedef  TYPE_3__ mbedtls_ssl_context ;
struct TYPE_13__ {scalar_t__ state; } ;
typedef  TYPE_4__ mbedtls_sha256_context ;
struct TYPE_10__ {int /*<<< orphan*/  (* tls_prf ) (int /*<<< orphan*/ ,int,char const*,unsigned char*,int,unsigned char*,int) ;int /*<<< orphan*/  fin_sha256; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int MBEDTLS_SSL_IS_CLIENT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,char const*,unsigned char*,int,unsigned char*,int) ; 

__attribute__((used)) static void FUNC8(
                mbedtls_ssl_context *ssl, unsigned char *buf, int from )
{
    int len = 12;
    const char *sender;
    mbedtls_sha256_context sha256;
    unsigned char padbuf[32];

    mbedtls_ssl_session *session = ssl->session_negotiate;
    if( !session )
        session = ssl->session;

    FUNC5( &sha256 );

    FUNC1( 2, ( "=> calc  finished tls sha256" ) );

    FUNC2( &sha256, &ssl->handshake->fin_sha256 );

    /*
     * TLSv1.2:
     *   hash = PRF( master, finished_label,
     *               Hash( handshake ) )[0.11]
     */

#if !defined(MBEDTLS_SHA256_ALT)
    FUNC0( 4, "finished sha2 state", (unsigned char *)
                   sha256.state, sizeof( sha256.state ) );
#endif

    sender = ( from == MBEDTLS_SSL_IS_CLIENT )
             ? "client finished"
             : "server finished";

    FUNC3( &sha256, padbuf );

    ssl->handshake->tls_prf( session->master, 48, sender,
                             padbuf, 32, buf, len );

    FUNC0( 3, "calc finished result", buf, len );

    FUNC4( &sha256 );

    FUNC6(  padbuf, sizeof(  padbuf ) );

    FUNC1( 2, ( "<= calc  finished" ) );
}