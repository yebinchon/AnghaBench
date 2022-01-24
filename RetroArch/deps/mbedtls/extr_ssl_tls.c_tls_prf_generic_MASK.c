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
typedef  int /*<<< orphan*/  mbedtls_md_type_t ;
typedef  int /*<<< orphan*/  mbedtls_md_info_t ;
typedef  int /*<<< orphan*/  mbedtls_md_context_t ;
typedef  int /*<<< orphan*/  h_i ;

/* Variables and functions */
 int MBEDTLS_ERR_SSL_BAD_INPUT_DATA ; 
 int MBEDTLS_ERR_SSL_INTERNAL_ERROR ; 
 int MBEDTLS_MD_MAX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,...) ; 
 size_t FUNC11 (char const*) ; 

__attribute__((used)) static int FUNC12( mbedtls_md_type_t md_type,
                            const unsigned char *secret, size_t slen,
                            const char *label,
                            const unsigned char *random, size_t rlen,
                            unsigned char *dstbuf, size_t dlen )
{
    size_t nb;
    size_t i, j, k, md_len;
    unsigned char tmp[128];
    unsigned char h_i[MBEDTLS_MD_MAX_SIZE];
    const mbedtls_md_info_t *md_info;
    mbedtls_md_context_t md_ctx;
    int ret;

    FUNC7( &md_ctx );

    if( ( md_info = FUNC6( md_type ) ) == NULL )
        return( MBEDTLS_ERR_SSL_INTERNAL_ERROR );

    md_len = FUNC1( md_info );

    if( sizeof( tmp ) < md_len + FUNC11( label ) + rlen )
        return( MBEDTLS_ERR_SSL_BAD_INPUT_DATA );

    nb = FUNC11( label );
    FUNC10( tmp + md_len, label, nb );
    FUNC10( tmp + md_len + nb, random, rlen );
    nb += rlen;

    /*
     * Compute P_<hash>(secret, label + random)[0..dlen]
     */
    if ( ( ret = FUNC8( &md_ctx, md_info, 1 ) ) != 0 )
        return( ret );

    FUNC4( &md_ctx, secret, slen );
    FUNC5( &md_ctx, tmp + md_len, nb );
    FUNC2( &md_ctx, tmp );

    for( i = 0; i < dlen; i += md_len )
    {
        FUNC3 ( &md_ctx );
        FUNC5( &md_ctx, tmp, md_len + nb );
        FUNC2( &md_ctx, h_i );

        FUNC3 ( &md_ctx );
        FUNC5( &md_ctx, tmp, md_len );
        FUNC2( &md_ctx, tmp );

        k = ( i + md_len > dlen ) ? dlen % md_len : md_len;

        for( j = 0; j < k; j++ )
            dstbuf[i + j]  = h_i[j];
    }

    FUNC0( &md_ctx );

    FUNC9( tmp, sizeof( tmp ) );
    FUNC9( h_i, sizeof( h_i ) );

    return( 0 );
}