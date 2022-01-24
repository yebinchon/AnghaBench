#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  hash_id; int /*<<< orphan*/  padding; int /*<<< orphan*/  Vf; int /*<<< orphan*/  Vi; int /*<<< orphan*/  RQ; int /*<<< orphan*/  RP; int /*<<< orphan*/  RN; int /*<<< orphan*/  QP; int /*<<< orphan*/  DQ; int /*<<< orphan*/  DP; int /*<<< orphan*/  Q; int /*<<< orphan*/  P; int /*<<< orphan*/  D; int /*<<< orphan*/  E; int /*<<< orphan*/  N; int /*<<< orphan*/  len; int /*<<< orphan*/  ver; } ;
typedef  TYPE_1__ mbedtls_rsa_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

int FUNC3( mbedtls_rsa_context *dst, const mbedtls_rsa_context *src )
{
    int ret;

    dst->ver = src->ver;
    dst->len = src->len;

    FUNC0( FUNC1( &dst->N, &src->N ) );
    FUNC0( FUNC1( &dst->E, &src->E ) );

    FUNC0( FUNC1( &dst->D, &src->D ) );
    FUNC0( FUNC1( &dst->P, &src->P ) );
    FUNC0( FUNC1( &dst->Q, &src->Q ) );
    FUNC0( FUNC1( &dst->DP, &src->DP ) );
    FUNC0( FUNC1( &dst->DQ, &src->DQ ) );
    FUNC0( FUNC1( &dst->QP, &src->QP ) );

    FUNC0( FUNC1( &dst->RN, &src->RN ) );
    FUNC0( FUNC1( &dst->RP, &src->RP ) );
    FUNC0( FUNC1( &dst->RQ, &src->RQ ) );

    FUNC0( FUNC1( &dst->Vi, &src->Vi ) );
    FUNC0( FUNC1( &dst->Vf, &src->Vf ) );

    dst->padding = src->padding;
    dst->hash_id = src->hash_id;

cleanup:
    if( ret != 0 )
        FUNC2( dst );

    return( ret );
}