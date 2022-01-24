#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_1__ ;

/* Type definitions */
struct TYPE_28__ {int /*<<< orphan*/  p; } ;
struct TYPE_27__ {int /*<<< orphan*/  QP; int /*<<< orphan*/  DQ; int /*<<< orphan*/  DP; int /*<<< orphan*/  N; TYPE_2__ P; TYPE_2__ Q; TYPE_2__ D; TYPE_2__ E; } ;
typedef  TYPE_1__ mbedtls_rsa_context ;
typedef  TYPE_2__ mbedtls_mpi ;

/* Variables and functions */
 int MBEDTLS_ERR_RSA_KEY_CHECK_FAILED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_2__*,int) ; 
 scalar_t__ FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,TYPE_2__*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,TYPE_2__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,TYPE_2__*,int) ; 
 int FUNC11 (TYPE_1__ const*) ; 

int FUNC12( const mbedtls_rsa_context *ctx )
{
    int ret;
    mbedtls_mpi PQ, DE, P1, Q1, H, I, G, G2, L1, L2, DP, DQ, QP;

    if( ( ret = FUNC11( ctx ) ) != 0 )
        return( ret );

    if( !ctx->P.p || !ctx->Q.p || !ctx->D.p )
        return( MBEDTLS_ERR_RSA_KEY_CHECK_FAILED );

    FUNC6( &PQ ); FUNC6( &DE ); FUNC6( &P1 ); FUNC6( &Q1 );
    FUNC6( &H  ); FUNC6( &I  ); FUNC6( &G  ); FUNC6( &G2 );
    FUNC6( &L1 ); FUNC6( &L2 ); FUNC6( &DP ); FUNC6( &DQ );
    FUNC6( &QP );

    FUNC0( FUNC9( &PQ, &ctx->P, &ctx->Q ) );
    FUNC0( FUNC9( &DE, &ctx->D, &ctx->E ) );
    FUNC0( FUNC10( &P1, &ctx->P, 1 ) );
    FUNC0( FUNC10( &Q1, &ctx->Q, 1 ) );
    FUNC0( FUNC9( &H, &P1, &Q1 ) );
    FUNC0( FUNC5( &G, &ctx->E, &H  ) );

    FUNC0( FUNC5( &G2, &P1, &Q1 ) );
    FUNC0( FUNC3( &L1, &L2, &H, &G2 ) );
    FUNC0( FUNC8( &I, &DE, &L1  ) );

    FUNC0( FUNC8( &DP, &ctx->D, &P1 ) );
    FUNC0( FUNC8( &DQ, &ctx->D, &Q1 ) );
    FUNC0( FUNC7( &QP, &ctx->Q, &ctx->P ) );
    /*
     * Check for a valid PKCS1v2 private key
     */
    if( FUNC2( &PQ, &ctx->N ) != 0 ||
        FUNC2( &DP, &ctx->DP ) != 0 ||
        FUNC2( &DQ, &ctx->DQ ) != 0 ||
        FUNC2( &QP, &ctx->QP ) != 0 ||
        FUNC1( &L2, 0 ) != 0 ||
        FUNC1( &I, 1 ) != 0 ||
        FUNC1( &G, 1 ) != 0 )
    {
        ret = MBEDTLS_ERR_RSA_KEY_CHECK_FAILED;
    }

cleanup:
    FUNC4( &PQ ); FUNC4( &DE ); FUNC4( &P1 ); FUNC4( &Q1 );
    FUNC4( &H  ); FUNC4( &I  ); FUNC4( &G  ); FUNC4( &G2 );
    FUNC4( &L1 ); FUNC4( &L2 ); FUNC4( &DP ); FUNC4( &DQ );
    FUNC4( &QP );

    if( ret == MBEDTLS_ERR_RSA_KEY_CHECK_FAILED )
        return( ret );

    if( ret != 0 )
        return( MBEDTLS_ERR_RSA_KEY_CHECK_FAILED + ret );

    return( 0 );
}