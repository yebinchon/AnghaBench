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
typedef  int /*<<< orphan*/  mbedtls_md_info_t ;
typedef  int /*<<< orphan*/  mbedtls_md_context_t ;

/* Variables and functions */
 int MBEDTLS_ERR_MD_BAD_INPUT_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

int FUNC6( const mbedtls_md_info_t *md_info, const unsigned char *key, size_t keylen,
                const unsigned char *input, size_t ilen,
                unsigned char *output )
{
    mbedtls_md_context_t ctx;
    int ret;

    if( md_info == NULL )
        return( MBEDTLS_ERR_MD_BAD_INPUT_DATA );

    FUNC4( &ctx );

    if( ( ret = FUNC5( &ctx, md_info, 1 ) ) != 0 )
        return( ret );

    FUNC2( &ctx, key, keylen );
    FUNC3( &ctx, input, ilen );
    FUNC1( &ctx, output );

    FUNC0( &ctx );

    return( 0 );
}