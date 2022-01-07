
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int mbedtls_pk_info_t ;
typedef int mbedtls_pk_context ;
struct TYPE_5__ {unsigned char const* buf; size_t buflen; } ;
typedef TYPE_1__ mbedtls_pem_context ;


 int MBEDTLS_ERR_PEM_NO_HEADER_FOOTER_PRESENT ;
 int MBEDTLS_ERR_PEM_PASSWORD_MISMATCH ;
 int MBEDTLS_ERR_PEM_PASSWORD_REQUIRED ;
 int MBEDTLS_ERR_PK_KEY_INVALID_FORMAT ;
 int MBEDTLS_ERR_PK_PASSWORD_MISMATCH ;
 int MBEDTLS_ERR_PK_PASSWORD_REQUIRED ;
 int MBEDTLS_ERR_PK_UNKNOWN_PK_ALG ;
 int MBEDTLS_PK_ECKEY ;
 int MBEDTLS_PK_RSA ;
 int mbedtls_pem_free (TYPE_1__*) ;
 int mbedtls_pem_init (TYPE_1__*) ;
 int mbedtls_pem_read_buffer (TYPE_1__*,char*,char*,unsigned char const*,unsigned char const*,size_t,size_t*) ;
 int mbedtls_pk_ec (int ) ;
 int mbedtls_pk_free (int *) ;
 int * mbedtls_pk_info_from_type (int ) ;
 int mbedtls_pk_rsa (int ) ;
 int mbedtls_pk_setup (int *,int const*) ;
 int pk_parse_key_pkcs1_der (int ,unsigned char const*,size_t) ;
 int pk_parse_key_pkcs8_encrypted_der (int *,unsigned char const*,size_t,unsigned char const*,size_t) ;
 int pk_parse_key_pkcs8_unencrypted_der (int *,unsigned char const*,size_t) ;
 int pk_parse_key_sec1_der (int ,unsigned char const*,size_t) ;

int mbedtls_pk_parse_key( mbedtls_pk_context *pk,
                  const unsigned char *key, size_t keylen,
                  const unsigned char *pwd, size_t pwdlen )
{
    int ret;
    const mbedtls_pk_info_t *pk_info;
    ((void) ret);
    ((void) pwd);
    ((void) pwdlen);
    if( ( ret = pk_parse_key_pkcs8_unencrypted_der( pk, key, keylen ) ) == 0 )
        return( 0 );

    mbedtls_pk_free( pk );
    return( MBEDTLS_ERR_PK_KEY_INVALID_FORMAT );
}
