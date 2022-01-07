
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_pk_context ;
typedef int mbedtls_md_type_t ;
typedef int mbedtls_cipher_type_t ;
typedef int mbedtls_asn1_buf ;
typedef int buf ;


 unsigned char MBEDTLS_ASN1_CONSTRUCTED ;
 unsigned char MBEDTLS_ASN1_OCTET_STRING ;
 unsigned char MBEDTLS_ASN1_SEQUENCE ;
 int MBEDTLS_ERR_PKCS12_PASSWORD_MISMATCH ;
 int MBEDTLS_ERR_PKCS5_PASSWORD_MISMATCH ;
 int MBEDTLS_ERR_PK_BAD_INPUT_DATA ;
 int MBEDTLS_ERR_PK_FEATURE_UNAVAILABLE ;
 int MBEDTLS_ERR_PK_KEY_INVALID_FORMAT ;
 int MBEDTLS_ERR_PK_PASSWORD_MISMATCH ;
 int MBEDTLS_ERR_PK_PASSWORD_REQUIRED ;
 scalar_t__ MBEDTLS_OID_CMP (int ,int *) ;
 int MBEDTLS_OID_PKCS12_PBE_SHA1_RC4_128 ;
 int MBEDTLS_OID_PKCS5_PBES2 ;
 int MBEDTLS_PKCS12_PBE_DECRYPT ;
 int MBEDTLS_PKCS5_DECRYPT ;
 int mbedtls_asn1_get_alg (unsigned char**,unsigned char*,int *,int *) ;
 int mbedtls_asn1_get_tag (unsigned char**,unsigned char*,size_t*,unsigned char) ;
 scalar_t__ mbedtls_oid_get_pkcs12_pbe_alg (int *,int *,int *) ;
 int mbedtls_pkcs12_pbe (int *,int ,int ,int ,unsigned char const*,size_t,unsigned char*,size_t,unsigned char*) ;
 int mbedtls_pkcs12_pbe_sha1_rc4_128 (int *,int ,unsigned char const*,size_t,unsigned char*,size_t,unsigned char*) ;
 int mbedtls_pkcs5_pbes2 (int *,int ,unsigned char const*,size_t,unsigned char*,size_t,unsigned char*) ;
 int memset (unsigned char*,int ,int) ;
 int pk_parse_key_pkcs8_unencrypted_der (int *,unsigned char*,size_t) ;

__attribute__((used)) static int pk_parse_key_pkcs8_encrypted_der(
                                    mbedtls_pk_context *pk,
                                    const unsigned char *key, size_t keylen,
                                    const unsigned char *pwd, size_t pwdlen )
{
    int ret, decrypted = 0;
    size_t len;
    unsigned char buf[2048];
    unsigned char *p, *end;
    mbedtls_asn1_buf pbe_alg_oid, pbe_params;





    memset( buf, 0, sizeof( buf ) );

    p = (unsigned char *) key;
    end = p + keylen;

    if( pwdlen == 0 )
        return( MBEDTLS_ERR_PK_PASSWORD_REQUIRED );
    if( ( ret = mbedtls_asn1_get_tag( &p, end, &len,
            MBEDTLS_ASN1_CONSTRUCTED | MBEDTLS_ASN1_SEQUENCE ) ) != 0 )
    {
        return( MBEDTLS_ERR_PK_KEY_INVALID_FORMAT + ret );
    }

    end = p + len;

    if( ( ret = mbedtls_asn1_get_alg( &p, end, &pbe_alg_oid, &pbe_params ) ) != 0 )
        return( MBEDTLS_ERR_PK_KEY_INVALID_FORMAT + ret );

    if( ( ret = mbedtls_asn1_get_tag( &p, end, &len, MBEDTLS_ASN1_OCTET_STRING ) ) != 0 )
        return( MBEDTLS_ERR_PK_KEY_INVALID_FORMAT + ret );

    if( len > sizeof( buf ) )
        return( MBEDTLS_ERR_PK_BAD_INPUT_DATA );
    {
        ((void) pwd);
    }

    if( decrypted == 0 )
        return( MBEDTLS_ERR_PK_FEATURE_UNAVAILABLE );

    return( pk_parse_key_pkcs8_unencrypted_der( pk, buf, len ) );
}
