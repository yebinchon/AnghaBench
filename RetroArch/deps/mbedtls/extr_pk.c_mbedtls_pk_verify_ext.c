
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ mbedtls_pk_type_t ;
struct TYPE_8__ {int expected_salt_len; int mgf1_hash_id; } ;
typedef TYPE_1__ mbedtls_pk_rsassa_pss_options ;
struct TYPE_9__ {int * pk_info; } ;
typedef TYPE_2__ mbedtls_pk_context ;
typedef scalar_t__ mbedtls_md_type_t ;


 int MBEDTLS_ERR_PK_BAD_INPUT_DATA ;
 int MBEDTLS_ERR_PK_FEATURE_UNAVAILABLE ;
 int MBEDTLS_ERR_PK_SIG_LEN_MISMATCH ;
 int MBEDTLS_ERR_PK_TYPE_MISMATCH ;
 int MBEDTLS_ERR_RSA_VERIFY_FAILED ;
 scalar_t__ MBEDTLS_MD_NONE ;
 scalar_t__ MBEDTLS_PK_RSASSA_PSS ;
 int MBEDTLS_RSA_PUBLIC ;
 size_t UINT_MAX ;
 int mbedtls_pk_can_do (TYPE_2__*,scalar_t__) ;
 size_t mbedtls_pk_get_len (TYPE_2__*) ;
 int mbedtls_pk_rsa (TYPE_2__) ;
 int mbedtls_pk_verify (TYPE_2__*,scalar_t__,unsigned char const*,size_t,unsigned char const*,size_t) ;
 int mbedtls_rsa_rsassa_pss_verify_ext (int ,int *,int *,int ,scalar_t__,unsigned int,unsigned char const*,int ,int ,unsigned char const*) ;

int mbedtls_pk_verify_ext( mbedtls_pk_type_t type, const void *options,
                   mbedtls_pk_context *ctx, mbedtls_md_type_t md_alg,
                   const unsigned char *hash, size_t hash_len,
                   const unsigned char *sig, size_t sig_len )
{
    if( ctx == ((void*)0) || ctx->pk_info == ((void*)0) )
        return( MBEDTLS_ERR_PK_BAD_INPUT_DATA );

    if( ! mbedtls_pk_can_do( ctx, type ) )
        return( MBEDTLS_ERR_PK_TYPE_MISMATCH );

    if( type == MBEDTLS_PK_RSASSA_PSS )
    {
        return( MBEDTLS_ERR_PK_FEATURE_UNAVAILABLE );

    }


    if( options != ((void*)0) )
        return( MBEDTLS_ERR_PK_BAD_INPUT_DATA );

    return( mbedtls_pk_verify( ctx, md_alg, hash, hash_len, sig, sig_len ) );
}
