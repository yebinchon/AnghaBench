#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_1__* handshake; } ;
typedef  TYPE_2__ mbedtls_ssl_context ;
typedef  int /*<<< orphan*/  mbedtls_sha1_context ;
typedef  int /*<<< orphan*/  mbedtls_md5_context ;
struct TYPE_4__ {int /*<<< orphan*/  fin_sha1; int /*<<< orphan*/  fin_md5; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10( mbedtls_ssl_context *ssl, unsigned char hash[36] )
{
    mbedtls_md5_context md5;
    mbedtls_sha1_context sha1;

    FUNC1( 2, ( "=> calc verify tls" ) );

    FUNC5( &md5 );
    FUNC9( &sha1 );

    FUNC2( &md5, &ssl->handshake->fin_md5 );
    FUNC6( &sha1, &ssl->handshake->fin_sha1 );

     FUNC3( &md5,  hash );
    FUNC7( &sha1, hash + 16 );

    FUNC0( 3, "calculated verify result", hash, 36 );
    FUNC1( 2, ( "<= calc verify" ) );

    FUNC4(  &md5  );
    FUNC8( &sha1 );

    return;
}