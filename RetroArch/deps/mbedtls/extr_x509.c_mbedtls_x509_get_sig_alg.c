
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ tag; scalar_t__ len; } ;
typedef TYPE_1__ mbedtls_x509_buf ;
typedef scalar_t__ mbedtls_pk_type_t ;
struct TYPE_10__ {int expected_salt_len; int mgf1_hash_id; } ;
typedef TYPE_2__ mbedtls_pk_rsassa_pss_options ;
typedef int mbedtls_md_type_t ;


 scalar_t__ MBEDTLS_ASN1_NULL ;
 int MBEDTLS_ERR_X509_ALLOC_FAILED ;
 int MBEDTLS_ERR_X509_BAD_INPUT_DATA ;
 int MBEDTLS_ERR_X509_INVALID_ALG ;
 int MBEDTLS_ERR_X509_UNKNOWN_SIG_ALG ;
 scalar_t__ MBEDTLS_PK_RSASSA_PSS ;
 TYPE_2__* mbedtls_calloc (int,int) ;
 int mbedtls_free (TYPE_2__*) ;
 int mbedtls_oid_get_sig_alg (TYPE_1__ const*,int *,scalar_t__*) ;
 int mbedtls_x509_get_rsassa_pss_params (TYPE_1__ const*,int *,int *,int *) ;

int mbedtls_x509_get_sig_alg( const mbedtls_x509_buf *sig_oid, const mbedtls_x509_buf *sig_params,
                      mbedtls_md_type_t *md_alg, mbedtls_pk_type_t *pk_alg,
                      void **sig_opts )
{
    int ret;

    if( *sig_opts != ((void*)0) )
        return( MBEDTLS_ERR_X509_BAD_INPUT_DATA );

    if( ( ret = mbedtls_oid_get_sig_alg( sig_oid, md_alg, pk_alg ) ) != 0 )
        return( MBEDTLS_ERR_X509_UNKNOWN_SIG_ALG + ret );
    {

        if( ( sig_params->tag != MBEDTLS_ASN1_NULL && sig_params->tag != 0 ) ||
              sig_params->len != 0 )
        return( MBEDTLS_ERR_X509_INVALID_ALG );
    }

    return( 0 );
}
