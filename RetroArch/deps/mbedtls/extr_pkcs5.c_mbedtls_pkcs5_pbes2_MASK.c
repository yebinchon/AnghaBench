#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mbedtls_operation_t ;
typedef  int /*<<< orphan*/  mbedtls_md_type_t ;
typedef  int /*<<< orphan*/  mbedtls_md_info_t ;
typedef  int /*<<< orphan*/  mbedtls_md_context_t ;
typedef  int /*<<< orphan*/  mbedtls_cipher_type_t ;
struct TYPE_12__ {int key_bitlen; scalar_t__ iv_size; } ;
typedef  TYPE_1__ mbedtls_cipher_info_t ;
typedef  int /*<<< orphan*/  mbedtls_cipher_context_t ;
struct TYPE_13__ {unsigned char* p; int len; int tag; } ;
typedef  TYPE_2__ mbedtls_asn1_buf ;

/* Variables and functions */
 int MBEDTLS_ASN1_CONSTRUCTED ; 
 scalar_t__ MBEDTLS_ASN1_OCTET_STRING ; 
 int MBEDTLS_ASN1_SEQUENCE ; 
 int MBEDTLS_ERR_ASN1_UNEXPECTED_TAG ; 
 int MBEDTLS_ERR_PKCS5_FEATURE_UNAVAILABLE ; 
 int MBEDTLS_ERR_PKCS5_INVALID_FORMAT ; 
 int MBEDTLS_ERR_PKCS5_PASSWORD_MISMATCH ; 
 int /*<<< orphan*/  MBEDTLS_MD_SHA1 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  MBEDTLS_OID_PKCS5_PBKDF2 ; 
 int FUNC1 (unsigned char**,unsigned char*,TYPE_2__*,TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned char*,scalar_t__,unsigned char const*,size_t,unsigned char*,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,unsigned char*,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 scalar_t__ FUNC12 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,unsigned char const*,size_t,unsigned char*,scalar_t__,int,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC14 (unsigned char*,unsigned char*,scalar_t__) ; 
 int FUNC15 (TYPE_2__*,TYPE_2__*,int*,int*,int /*<<< orphan*/ *) ; 

int FUNC16( const mbedtls_asn1_buf *pbe_params, int mode,
                 const unsigned char *pwd,  size_t pwdlen,
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

    /*
     *  PBES2-params ::= SEQUENCE {
     *    keyDerivationFunc AlgorithmIdentifier {{PBES2-KDFs}},
     *    encryptionScheme AlgorithmIdentifier {{PBES2-Encs}}
     *  }
     */
    if( pbe_params->tag != ( MBEDTLS_ASN1_CONSTRUCTED | MBEDTLS_ASN1_SEQUENCE ) )
        return( MBEDTLS_ERR_PKCS5_INVALID_FORMAT +
                MBEDTLS_ERR_ASN1_UNEXPECTED_TAG );

    if( ( ret = FUNC1( &p, end, &kdf_alg_oid, &kdf_alg_params ) ) != 0 )
        return( MBEDTLS_ERR_PKCS5_INVALID_FORMAT + ret );

    /* Only PBKDF2 supported at the moment */
    if( FUNC0( MBEDTLS_OID_PKCS5_PBKDF2, &kdf_alg_oid ) != 0 )
        return( MBEDTLS_ERR_PKCS5_FEATURE_UNAVAILABLE );

    if( ( ret = FUNC15( &kdf_alg_params,
                                           &salt, &iterations, &keylen,
                                           &md_type ) ) != 0 )
    {
        return( ret );
    }

    md_info = FUNC9( md_type );
    if( md_info == NULL )
        return( MBEDTLS_ERR_PKCS5_FEATURE_UNAVAILABLE );

    if( ( ret = FUNC1( &p, end, &enc_scheme_oid,
                              &enc_scheme_params ) ) != 0 )
    {
        return( MBEDTLS_ERR_PKCS5_INVALID_FORMAT + ret );
    }

    if( FUNC12( &enc_scheme_oid, &cipher_alg ) != 0 )
        return( MBEDTLS_ERR_PKCS5_FEATURE_UNAVAILABLE );

    cipher_info = FUNC4( cipher_alg );
    if( cipher_info == NULL )
        return( MBEDTLS_ERR_PKCS5_FEATURE_UNAVAILABLE );

    /*
     * The value of keylen from pkcs5_parse_pbkdf2_params() is ignored
     * since it is optional and we don't know if it was set or not
     */
    keylen = cipher_info->key_bitlen / 8;

    if( enc_scheme_params.tag != MBEDTLS_ASN1_OCTET_STRING ||
        enc_scheme_params.len != cipher_info->iv_size )
    {
        return( MBEDTLS_ERR_PKCS5_INVALID_FORMAT );
    }

    FUNC10( &md_ctx );
    FUNC5( &cipher_ctx );

    FUNC14( iv, enc_scheme_params.p, enc_scheme_params.len );

    if( ( ret = FUNC11( &md_ctx, md_info, 1 ) ) != 0 )
        goto exit;

    if( ( ret = FUNC13( &md_ctx, pwd, pwdlen, salt.p, salt.len,
                                   iterations, keylen, key ) ) != 0 )
    {
        goto exit;
    }

    if( ( ret = FUNC7( &cipher_ctx, cipher_info ) ) != 0 )
        goto exit;

    if( ( ret = FUNC6( &cipher_ctx, key, 8 * keylen, (mbedtls_operation_t) mode ) ) != 0 )
        goto exit;

    if( ( ret = FUNC2( &cipher_ctx, iv, enc_scheme_params.len,
                              data, datalen, output, &olen ) ) != 0 )
        ret = MBEDTLS_ERR_PKCS5_PASSWORD_MISMATCH;

exit:
    FUNC8( &md_ctx );
    FUNC3( &cipher_ctx );

    return( ret );
}