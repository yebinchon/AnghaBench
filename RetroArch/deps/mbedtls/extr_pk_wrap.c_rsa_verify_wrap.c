
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t len; } ;
typedef TYPE_1__ mbedtls_rsa_context ;
typedef scalar_t__ mbedtls_md_type_t ;


 int MBEDTLS_ERR_PK_BAD_INPUT_DATA ;
 int MBEDTLS_ERR_PK_SIG_LEN_MISMATCH ;
 int MBEDTLS_ERR_RSA_VERIFY_FAILED ;
 scalar_t__ MBEDTLS_MD_NONE ;
 int MBEDTLS_RSA_PUBLIC ;
 size_t UINT_MAX ;
 int mbedtls_rsa_pkcs1_verify (TYPE_1__*,int *,int *,int ,scalar_t__,unsigned int,unsigned char const*,unsigned char const*) ;

__attribute__((used)) static int rsa_verify_wrap( void *ctx, mbedtls_md_type_t md_alg,
                   const unsigned char *hash, size_t hash_len,
                   const unsigned char *sig, size_t sig_len )
{
    int ret;






    if( sig_len < ((mbedtls_rsa_context *) ctx)->len )
        return( MBEDTLS_ERR_RSA_VERIFY_FAILED );

    if( ( ret = mbedtls_rsa_pkcs1_verify( (mbedtls_rsa_context *) ctx, ((void*)0), ((void*)0),
                                  MBEDTLS_RSA_PUBLIC, md_alg,
                                  (unsigned int) hash_len, hash, sig ) ) != 0 )
        return( ret );

    if( sig_len > ((mbedtls_rsa_context *) ctx)->len )
        return( MBEDTLS_ERR_PK_SIG_LEN_MISMATCH );

    return( 0 );
}
