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
typedef  int /*<<< orphan*/  tmp ;
typedef  int /*<<< orphan*/  mbedtls_md_info_t ;
typedef  int /*<<< orphan*/  mbedtls_md_context_t ;
typedef  int /*<<< orphan*/  h_i ;

/* Variables and functions */
 int MBEDTLS_ERR_SSL_BAD_INPUT_DATA ; 
 int MBEDTLS_ERR_SSL_INTERNAL_ERROR ; 
 int /*<<< orphan*/  MBEDTLS_MD_MD5 ; 
 int /*<<< orphan*/  MBEDTLS_MD_SHA1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,...) ; 
 int FUNC10 (char const*) ; 

__attribute__((used)) static int FUNC11( const unsigned char *secret, size_t slen,
                     const char *label,
                     const unsigned char *random, size_t rlen,
                     unsigned char *dstbuf, size_t dlen )
{
    size_t nb, hs;
    size_t i, j, k;
    const unsigned char *S1, *S2;
    unsigned char tmp[128];
    unsigned char h_i[20];
    const mbedtls_md_info_t *md_info;
    mbedtls_md_context_t md_ctx;
    int ret;

    FUNC6( &md_ctx );

    if( sizeof( tmp ) < 20 + FUNC10( label ) + rlen )
        return( MBEDTLS_ERR_SSL_BAD_INPUT_DATA );

    hs = ( slen + 1 ) / 2;
    S1 = secret;
    S2 = secret + slen - hs;

    nb = FUNC10( label );
    FUNC9( tmp + 20, label, nb );
    FUNC9( tmp + 20 + nb, random, rlen );
    nb += rlen;

    /*
     * First compute P_md5(secret,label+random)[0..dlen]
     */
    if( ( md_info = FUNC5( MBEDTLS_MD_MD5 ) ) == NULL )
        return( MBEDTLS_ERR_SSL_INTERNAL_ERROR );

    if( ( ret = FUNC7( &md_ctx, md_info, 1 ) ) != 0 )
        return( ret );

    FUNC3( &md_ctx, S1, hs );
    FUNC4( &md_ctx, tmp + 20, nb );
    FUNC1( &md_ctx, 4 + tmp );

    for( i = 0; i < dlen; i += 16 )
    {
        FUNC2 ( &md_ctx );
        FUNC4( &md_ctx, 4 + tmp, 16 + nb );
        FUNC1( &md_ctx, h_i );

        FUNC2 ( &md_ctx );
        FUNC4( &md_ctx, 4 + tmp, 16 );
        FUNC1( &md_ctx, 4 + tmp );

        k = ( i + 16 > dlen ) ? dlen % 16 : 16;

        for( j = 0; j < k; j++ )
            dstbuf[i + j]  = h_i[j];
    }

    FUNC0( &md_ctx );

    /*
     * XOR out with P_sha1(secret,label+random)[0..dlen]
     */
    if( ( md_info = FUNC5( MBEDTLS_MD_SHA1 ) ) == NULL )
        return( MBEDTLS_ERR_SSL_INTERNAL_ERROR );

    if( ( ret = FUNC7( &md_ctx, md_info, 1 ) ) != 0 )
        return( ret );

    FUNC3( &md_ctx, S2, hs );
    FUNC4( &md_ctx, tmp + 20, nb );
    FUNC1( &md_ctx, tmp );

    for( i = 0; i < dlen; i += 20 )
    {
        FUNC2 ( &md_ctx );
        FUNC4( &md_ctx, tmp, 20 + nb );
        FUNC1( &md_ctx, h_i );

        FUNC2 ( &md_ctx );
        FUNC4( &md_ctx, tmp, 20 );
        FUNC1( &md_ctx, tmp );

        k = ( i + 20 > dlen ) ? dlen % 20 : 20;

        for( j = 0; j < k; j++ )
            dstbuf[i + j] = (unsigned char)( dstbuf[i + j] ^ h_i[j] );
    }

    FUNC0( &md_ctx );

    FUNC8( tmp, sizeof( tmp ) );
    FUNC8( h_i, sizeof( h_i ) );

    return( 0 );
}