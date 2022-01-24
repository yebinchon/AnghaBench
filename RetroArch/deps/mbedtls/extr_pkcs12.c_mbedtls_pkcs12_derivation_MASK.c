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
typedef  int /*<<< orphan*/  salt_block ;
typedef  int /*<<< orphan*/  pwd_block ;
typedef  int /*<<< orphan*/  mbedtls_md_type_t ;
typedef  int /*<<< orphan*/  mbedtls_md_info_t ;
typedef  int /*<<< orphan*/  mbedtls_md_context_t ;
typedef  int /*<<< orphan*/  hash_output ;
typedef  int /*<<< orphan*/  hash_block ;

/* Variables and functions */
 int MBEDTLS_ERR_PKCS12_BAD_INPUT_DATA ; 
 int MBEDTLS_ERR_PKCS12_FEATURE_UNAVAILABLE ; 
 int MBEDTLS_MD_MAX_SIZE ; 
 int FUNC0 (int /*<<< orphan*/  const*,unsigned char*,size_t,unsigned char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 size_t FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*,unsigned char,size_t) ; 
 int /*<<< orphan*/  FUNC12 (unsigned char*,size_t,unsigned char const*,size_t) ; 

int FUNC13( unsigned char *data, size_t datalen,
                       const unsigned char *pwd, size_t pwdlen,
                       const unsigned char *salt, size_t saltlen,
                       mbedtls_md_type_t md_type, int id, int iterations )
{
    int ret;
    unsigned int j;

    unsigned char diversifier[128];
    unsigned char salt_block[128], pwd_block[128], hash_block[128];
    unsigned char hash_output[MBEDTLS_MD_MAX_SIZE];
    unsigned char *p;
    unsigned char c;

    size_t hlen, use_len, v, i;

    const mbedtls_md_info_t *md_info;
    mbedtls_md_context_t md_ctx;

    /* This version only allows max of 64 bytes of password or salt */
    if( datalen > 128 || pwdlen > 64 || saltlen > 64 )
        return( MBEDTLS_ERR_PKCS12_BAD_INPUT_DATA );

    md_info = FUNC4( md_type );
    if( md_info == NULL )
        return( MBEDTLS_ERR_PKCS12_FEATURE_UNAVAILABLE );

    FUNC5( &md_ctx );

    if( ( ret = FUNC6( &md_ctx, md_info, 0 ) ) != 0 )
        return( ret );
    hlen = FUNC3( md_info );

    if( hlen <= 32 )
        v = 64;
    else
        v = 128;

    FUNC11( diversifier, (unsigned char) id, v );

    FUNC12( salt_block, v, salt, saltlen );
    FUNC12( pwd_block,  v, pwd,  pwdlen  );

    p = data;
    while( datalen > 0 )
    {
        /* Calculate hash( diversifier || salt_block || pwd_block ) */
        if( ( ret = FUNC7( &md_ctx ) ) != 0 )
            goto exit;

        if( ( ret = FUNC8( &md_ctx, diversifier, v ) ) != 0 )
            goto exit;

        if( ( ret = FUNC8( &md_ctx, salt_block, v ) ) != 0 )
            goto exit;

        if( ( ret = FUNC8( &md_ctx, pwd_block, v ) ) != 0 )
            goto exit;

        if( ( ret = FUNC1( &md_ctx, hash_output ) ) != 0 )
            goto exit;

        /* Perform remaining ( iterations - 1 ) recursive hash calculations */
        for( i = 1; i < (size_t) iterations; i++ )
        {
            if( ( ret = FUNC0( md_info, hash_output, hlen, hash_output ) ) != 0 )
                goto exit;
        }

        use_len = ( datalen > hlen ) ? hlen : datalen;
        FUNC10( p, hash_output, use_len );
        datalen -= use_len;
        p += use_len;

        if( datalen == 0 )
            break;

        /* Concatenating copies of hash_output into hash_block (B) */
        FUNC12( hash_block, v, hash_output, hlen );

        /* B += 1 */
        for( i = v; i > 0; i-- )
            if( ++hash_block[i - 1] != 0 )
                break;

        /* salt_block += B */
        c = 0;
        for( i = v; i > 0; i-- )
        {
            j = salt_block[i - 1] + hash_block[i - 1] + c;
            c = (unsigned char) (j >> 8);
            salt_block[i - 1] = j & 0xFF;
        }

        /* pwd_block  += B */
        c = 0;
        for( i = v; i > 0; i-- )
        {
            j = pwd_block[i - 1] + hash_block[i - 1] + c;
            c = (unsigned char) (j >> 8);
            pwd_block[i - 1] = j & 0xFF;
        }
    }

    ret = 0;

exit:
    FUNC9( salt_block, sizeof( salt_block ) );
    FUNC9( pwd_block, sizeof( pwd_block ) );
    FUNC9( hash_block, sizeof( hash_block ) );
    FUNC9( hash_output, sizeof( hash_output ) );

    FUNC2( &md_ctx );

    return( ret );
}