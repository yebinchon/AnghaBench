
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int mbedtls_operation_t ;
typedef int mbedtls_md_type_t ;
typedef int mbedtls_md_info_t ;
typedef int mbedtls_md_context_t ;
typedef int mbedtls_cipher_type_t ;
struct TYPE_12__ {int key_bitlen; scalar_t__ iv_size; } ;
typedef TYPE_1__ mbedtls_cipher_info_t ;
typedef int mbedtls_cipher_context_t ;
struct TYPE_13__ {unsigned char* p; int len; int tag; } ;
typedef TYPE_2__ mbedtls_asn1_buf ;


 int MBEDTLS_ASN1_CONSTRUCTED ;
 scalar_t__ MBEDTLS_ASN1_OCTET_STRING ;
 int MBEDTLS_ASN1_SEQUENCE ;
 int MBEDTLS_ERR_ASN1_UNEXPECTED_TAG ;
 int MBEDTLS_ERR_PKCS5_FEATURE_UNAVAILABLE ;
 int MBEDTLS_ERR_PKCS5_INVALID_FORMAT ;
 int MBEDTLS_ERR_PKCS5_PASSWORD_MISMATCH ;
 int MBEDTLS_MD_SHA1 ;
 scalar_t__ MBEDTLS_OID_CMP (int ,TYPE_2__*) ;
 int MBEDTLS_OID_PKCS5_PBKDF2 ;
 int mbedtls_asn1_get_alg (unsigned char**,unsigned char*,TYPE_2__*,TYPE_2__*) ;
 int mbedtls_cipher_crypt (int *,unsigned char*,scalar_t__,unsigned char const*,size_t,unsigned char*,size_t*) ;
 int mbedtls_cipher_free (int *) ;
 TYPE_1__* mbedtls_cipher_info_from_type (int ) ;
 int mbedtls_cipher_init (int *) ;
 int mbedtls_cipher_setkey (int *,unsigned char*,int,int ) ;
 int mbedtls_cipher_setup (int *,TYPE_1__ const*) ;
 int mbedtls_md_free (int *) ;
 int * mbedtls_md_info_from_type (int ) ;
 int mbedtls_md_init (int *) ;
 int mbedtls_md_setup (int *,int const*,int) ;
 scalar_t__ mbedtls_oid_get_cipher_alg (TYPE_2__*,int *) ;
 int mbedtls_pkcs5_pbkdf2_hmac (int *,unsigned char const*,size_t,unsigned char*,scalar_t__,int,int,unsigned char*) ;
 int memcpy (unsigned char*,unsigned char*,scalar_t__) ;
 int pkcs5_parse_pbkdf2_params (TYPE_2__*,TYPE_2__*,int*,int*,int *) ;

int mbedtls_pkcs5_pbes2( const mbedtls_asn1_buf *pbe_params, int mode,
                 const unsigned char *pwd, size_t pwdlen,
                 const unsigned char *data, size_t datalen,
                 unsigned char *output )
{
    int ret, iterations = 0, keylen = 0;
    unsigned char *p, *end;
    mbedtls_asn1_buf kdf_alg_oid, enc_scheme_oid, kdf_alg_params, enc_scheme_params;
    mbedtls_asn1_buf salt;
    mbedtls_md_type_t md_type = MBEDTLS_MD_SHA1;
    unsigned char key[32], iv[32];
    size_t olen = 0;
    const mbedtls_md_info_t *md_info;
    const mbedtls_cipher_info_t *cipher_info;
    mbedtls_md_context_t md_ctx;
    mbedtls_cipher_type_t cipher_alg;
    mbedtls_cipher_context_t cipher_ctx;

    p = pbe_params->p;
    end = p + pbe_params->len;







    if( pbe_params->tag != ( MBEDTLS_ASN1_CONSTRUCTED | MBEDTLS_ASN1_SEQUENCE ) )
        return( MBEDTLS_ERR_PKCS5_INVALID_FORMAT +
                MBEDTLS_ERR_ASN1_UNEXPECTED_TAG );

    if( ( ret = mbedtls_asn1_get_alg( &p, end, &kdf_alg_oid, &kdf_alg_params ) ) != 0 )
        return( MBEDTLS_ERR_PKCS5_INVALID_FORMAT + ret );


    if( MBEDTLS_OID_CMP( MBEDTLS_OID_PKCS5_PBKDF2, &kdf_alg_oid ) != 0 )
        return( MBEDTLS_ERR_PKCS5_FEATURE_UNAVAILABLE );

    if( ( ret = pkcs5_parse_pbkdf2_params( &kdf_alg_params,
                                           &salt, &iterations, &keylen,
                                           &md_type ) ) != 0 )
    {
        return( ret );
    }

    md_info = mbedtls_md_info_from_type( md_type );
    if( md_info == ((void*)0) )
        return( MBEDTLS_ERR_PKCS5_FEATURE_UNAVAILABLE );

    if( ( ret = mbedtls_asn1_get_alg( &p, end, &enc_scheme_oid,
                              &enc_scheme_params ) ) != 0 )
    {
        return( MBEDTLS_ERR_PKCS5_INVALID_FORMAT + ret );
    }

    if( mbedtls_oid_get_cipher_alg( &enc_scheme_oid, &cipher_alg ) != 0 )
        return( MBEDTLS_ERR_PKCS5_FEATURE_UNAVAILABLE );

    cipher_info = mbedtls_cipher_info_from_type( cipher_alg );
    if( cipher_info == ((void*)0) )
        return( MBEDTLS_ERR_PKCS5_FEATURE_UNAVAILABLE );





    keylen = cipher_info->key_bitlen / 8;

    if( enc_scheme_params.tag != MBEDTLS_ASN1_OCTET_STRING ||
        enc_scheme_params.len != cipher_info->iv_size )
    {
        return( MBEDTLS_ERR_PKCS5_INVALID_FORMAT );
    }

    mbedtls_md_init( &md_ctx );
    mbedtls_cipher_init( &cipher_ctx );

    memcpy( iv, enc_scheme_params.p, enc_scheme_params.len );

    if( ( ret = mbedtls_md_setup( &md_ctx, md_info, 1 ) ) != 0 )
        goto exit;

    if( ( ret = mbedtls_pkcs5_pbkdf2_hmac( &md_ctx, pwd, pwdlen, salt.p, salt.len,
                                   iterations, keylen, key ) ) != 0 )
    {
        goto exit;
    }

    if( ( ret = mbedtls_cipher_setup( &cipher_ctx, cipher_info ) ) != 0 )
        goto exit;

    if( ( ret = mbedtls_cipher_setkey( &cipher_ctx, key, 8 * keylen, (mbedtls_operation_t) mode ) ) != 0 )
        goto exit;

    if( ( ret = mbedtls_cipher_crypt( &cipher_ctx, iv, enc_scheme_params.len,
                              data, datalen, output, &olen ) ) != 0 )
        ret = MBEDTLS_ERR_PKCS5_PASSWORD_MISMATCH;

exit:
    mbedtls_md_free( &md_ctx );
    mbedtls_cipher_free( &cipher_ctx );

    return( ret );
}
