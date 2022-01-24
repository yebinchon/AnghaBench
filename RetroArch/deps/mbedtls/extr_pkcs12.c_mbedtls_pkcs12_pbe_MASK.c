#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mbedtls_operation_t ;
typedef  int /*<<< orphan*/  mbedtls_md_type_t ;
typedef  int /*<<< orphan*/  mbedtls_cipher_type_t ;
struct TYPE_4__ {int key_bitlen; int /*<<< orphan*/  iv_size; } ;
typedef  TYPE_1__ mbedtls_cipher_info_t ;
typedef  int /*<<< orphan*/  mbedtls_cipher_context_t ;
typedef  int /*<<< orphan*/  mbedtls_asn1_buf ;
typedef  int /*<<< orphan*/  key ;
typedef  int /*<<< orphan*/  iv ;

/* Variables and functions */
 int MBEDTLS_ERR_PKCS12_FEATURE_UNAVAILABLE ; 
 int MBEDTLS_ERR_PKCS12_PASSWORD_MISMATCH ; 
 int FUNC0 (int /*<<< orphan*/ *,unsigned char*,size_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,unsigned char*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,TYPE_1__ const*) ; 
 int FUNC8 (int /*<<< orphan*/ *,unsigned char const*,size_t,unsigned char*,size_t*) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned char const*,size_t,unsigned char*,int,unsigned char*,int /*<<< orphan*/ ) ; 

int FUNC11( mbedtls_asn1_buf *pbe_params, int mode,
                mbedtls_cipher_type_t cipher_type, mbedtls_md_type_t md_type,
                const unsigned char *pwd,  size_t pwdlen,
                const unsigned char *data, size_t len,
                unsigned char *output )
{
    int ret, keylen = 0;
    unsigned char key[32];
    unsigned char iv[16];
    const mbedtls_cipher_info_t *cipher_info;
    mbedtls_cipher_context_t cipher_ctx;
    size_t olen = 0;

    cipher_info = FUNC2( cipher_type );
    if( cipher_info == NULL )
        return( MBEDTLS_ERR_PKCS12_FEATURE_UNAVAILABLE );

    keylen = cipher_info->key_bitlen / 8;

    if( ( ret = FUNC10( pbe_params, md_type, pwd, pwdlen,
                                          key, keylen,
                                          iv, cipher_info->iv_size ) ) != 0 )
    {
        return( ret );
    }

    FUNC3( &cipher_ctx );

    if( ( ret = FUNC7( &cipher_ctx, cipher_info ) ) != 0 )
        goto exit;

    if( ( ret = FUNC6( &cipher_ctx, key, 8 * keylen, (mbedtls_operation_t) mode ) ) != 0 )
        goto exit;

    if( ( ret = FUNC5( &cipher_ctx, iv, cipher_info->iv_size ) ) != 0 )
        goto exit;

    if( ( ret = FUNC4( &cipher_ctx ) ) != 0 )
        goto exit;

    if( ( ret = FUNC8( &cipher_ctx, data, len,
                                output, &olen ) ) != 0 )
    {
        goto exit;
    }

    if( ( ret = FUNC0( &cipher_ctx, output + olen, &olen ) ) != 0 )
        ret = MBEDTLS_ERR_PKCS12_PASSWORD_MISMATCH;

exit:
    FUNC9( key, sizeof( key ) );
    FUNC9( iv,  sizeof( iv  ) );
    FUNC1( &cipher_ctx );

    return( ret );
}