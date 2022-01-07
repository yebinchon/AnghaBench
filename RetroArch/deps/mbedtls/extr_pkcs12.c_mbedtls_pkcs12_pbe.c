
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int mbedtls_operation_t ;
typedef int mbedtls_md_type_t ;
typedef int mbedtls_cipher_type_t ;
struct TYPE_4__ {int key_bitlen; int iv_size; } ;
typedef TYPE_1__ mbedtls_cipher_info_t ;
typedef int mbedtls_cipher_context_t ;
typedef int mbedtls_asn1_buf ;
typedef int key ;
typedef int iv ;


 int MBEDTLS_ERR_PKCS12_FEATURE_UNAVAILABLE ;
 int MBEDTLS_ERR_PKCS12_PASSWORD_MISMATCH ;
 int mbedtls_cipher_finish (int *,unsigned char*,size_t*) ;
 int mbedtls_cipher_free (int *) ;
 TYPE_1__* mbedtls_cipher_info_from_type (int ) ;
 int mbedtls_cipher_init (int *) ;
 int mbedtls_cipher_reset (int *) ;
 int mbedtls_cipher_set_iv (int *,unsigned char*,int ) ;
 int mbedtls_cipher_setkey (int *,unsigned char*,int,int ) ;
 int mbedtls_cipher_setup (int *,TYPE_1__ const*) ;
 int mbedtls_cipher_update (int *,unsigned char const*,size_t,unsigned char*,size_t*) ;
 int mbedtls_zeroize (unsigned char*,int) ;
 int pkcs12_pbe_derive_key_iv (int *,int ,unsigned char const*,size_t,unsigned char*,int,unsigned char*,int ) ;

int mbedtls_pkcs12_pbe( mbedtls_asn1_buf *pbe_params, int mode,
                mbedtls_cipher_type_t cipher_type, mbedtls_md_type_t md_type,
                const unsigned char *pwd, size_t pwdlen,
                const unsigned char *data, size_t len,
                unsigned char *output )
{
    int ret, keylen = 0;
    unsigned char key[32];
    unsigned char iv[16];
    const mbedtls_cipher_info_t *cipher_info;
    mbedtls_cipher_context_t cipher_ctx;
    size_t olen = 0;

    cipher_info = mbedtls_cipher_info_from_type( cipher_type );
    if( cipher_info == ((void*)0) )
        return( MBEDTLS_ERR_PKCS12_FEATURE_UNAVAILABLE );

    keylen = cipher_info->key_bitlen / 8;

    if( ( ret = pkcs12_pbe_derive_key_iv( pbe_params, md_type, pwd, pwdlen,
                                          key, keylen,
                                          iv, cipher_info->iv_size ) ) != 0 )
    {
        return( ret );
    }

    mbedtls_cipher_init( &cipher_ctx );

    if( ( ret = mbedtls_cipher_setup( &cipher_ctx, cipher_info ) ) != 0 )
        goto exit;

    if( ( ret = mbedtls_cipher_setkey( &cipher_ctx, key, 8 * keylen, (mbedtls_operation_t) mode ) ) != 0 )
        goto exit;

    if( ( ret = mbedtls_cipher_set_iv( &cipher_ctx, iv, cipher_info->iv_size ) ) != 0 )
        goto exit;

    if( ( ret = mbedtls_cipher_reset( &cipher_ctx ) ) != 0 )
        goto exit;

    if( ( ret = mbedtls_cipher_update( &cipher_ctx, data, len,
                                output, &olen ) ) != 0 )
    {
        goto exit;
    }

    if( ( ret = mbedtls_cipher_finish( &cipher_ctx, output + olen, &olen ) ) != 0 )
        ret = MBEDTLS_ERR_PKCS12_PASSWORD_MISMATCH;

exit:
    mbedtls_zeroize( key, sizeof( key ) );
    mbedtls_zeroize( iv, sizeof( iv ) );
    mbedtls_cipher_free( &cipher_ctx );

    return( ret );
}
