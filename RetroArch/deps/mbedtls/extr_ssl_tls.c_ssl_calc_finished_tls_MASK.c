#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  padbuf ;
struct TYPE_16__ {int /*<<< orphan*/  master; } ;
typedef  TYPE_2__ mbedtls_ssl_session ;
struct TYPE_17__ {TYPE_1__* handshake; TYPE_2__* session; TYPE_2__* session_negotiate; } ;
typedef  TYPE_3__ mbedtls_ssl_context ;
struct TYPE_18__ {scalar_t__ state; } ;
typedef  TYPE_4__ mbedtls_sha1_context ;
struct TYPE_19__ {scalar_t__ state; } ;
typedef  TYPE_5__ mbedtls_md5_context ;
struct TYPE_15__ {int /*<<< orphan*/  (* tls_prf ) (int /*<<< orphan*/ ,int,char const*,unsigned char*,int,unsigned char*,int) ;int /*<<< orphan*/  fin_sha1; int /*<<< orphan*/  fin_md5; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int MBEDTLS_SSL_IS_CLIENT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int,char const*,unsigned char*,int,unsigned char*,int) ; 

__attribute__((used)) static void FUNC12(
                mbedtls_ssl_context *ssl, unsigned char *buf, int from )
{
    int len = 12;
    const char *sender;
    mbedtls_md5_context  md5;
    mbedtls_sha1_context sha1;
    unsigned char padbuf[36];

    mbedtls_ssl_session *session = ssl->session_negotiate;
    if( !session )
        session = ssl->session;

    FUNC1( 2, ( "=> calc  finished tls" ) );

    FUNC5( &md5 );
    FUNC9( &sha1 );

    FUNC2( &md5, &ssl->handshake->fin_md5 );
    FUNC6( &sha1, &ssl->handshake->fin_sha1 );

    /*
     * TLSv1:
     *   hash = PRF( master, finished_label,
     *               MD5( handshake ) + SHA1( handshake ) )[0..11]
     */

#if !defined(MBEDTLS_MD5_ALT)
    FUNC0( 4, "finished  md5 state", (unsigned char *)
                    md5.state, sizeof(  md5.state ) );
#endif

#if !defined(MBEDTLS_SHA1_ALT)
    FUNC0( 4, "finished sha1 state", (unsigned char *)
                   sha1.state, sizeof( sha1.state ) );
#endif

    sender = ( from == MBEDTLS_SSL_IS_CLIENT )
             ? "client finished"
             : "server finished";

    FUNC3(  &md5, padbuf );
    FUNC7( &sha1, padbuf + 16 );

    ssl->handshake->tls_prf( session->master, 48, sender,
                             padbuf, 36, buf, len );

    FUNC0( 3, "calc finished result", buf, len );

    FUNC4(  &md5  );
    FUNC8( &sha1 );

    FUNC10(  padbuf, sizeof(  padbuf ) );

    FUNC1( 2, ( "<= calc  finished" ) );
}