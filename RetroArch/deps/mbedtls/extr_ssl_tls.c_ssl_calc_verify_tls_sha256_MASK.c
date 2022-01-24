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
typedef  int /*<<< orphan*/  mbedtls_sha256_context ;
struct TYPE_4__ {int /*<<< orphan*/  fin_sha256; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6( mbedtls_ssl_context *ssl, unsigned char hash[32] )
{
    mbedtls_sha256_context sha256;

    FUNC5( &sha256 );

    FUNC1( 2, ( "=> calc verify sha256" ) );

    FUNC2( &sha256, &ssl->handshake->fin_sha256 );
    FUNC3( &sha256, hash );

    FUNC0( 3, "calculated verify result", hash, 32 );
    FUNC1( 2, ( "<= calc verify" ) );

    FUNC4( &sha256 );

    return;
}