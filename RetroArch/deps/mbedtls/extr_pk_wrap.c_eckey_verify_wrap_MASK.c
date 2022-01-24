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
typedef  int /*<<< orphan*/  mbedtls_md_type_t ;
typedef  int /*<<< orphan*/  mbedtls_ecdsa_context ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char const*,size_t,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4( void *ctx, mbedtls_md_type_t md_alg,
                       const unsigned char *hash, size_t hash_len,
                       const unsigned char *sig, size_t sig_len )
{
    int ret;
    mbedtls_ecdsa_context ecdsa;

    FUNC3( &ecdsa );

    if( ( ret = FUNC2( &ecdsa, ctx ) ) == 0 )
        ret = FUNC0( &ecdsa, md_alg, hash, hash_len, sig, sig_len );

    FUNC1( &ecdsa );

    return( ret );
}