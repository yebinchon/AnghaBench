
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int E; int N; } ;
typedef TYPE_1__ mbedtls_rsa_context ;


 int MBEDTLS_ERR_RSA_KEY_CHECK_FAILED ;
 scalar_t__ mbedtls_mpi_cmp_mpi (int *,int *) ;
 scalar_t__ mbedtls_rsa_check_privkey (TYPE_1__ const*) ;
 scalar_t__ mbedtls_rsa_check_pubkey (TYPE_1__ const*) ;

int mbedtls_rsa_check_pub_priv( const mbedtls_rsa_context *pub, const mbedtls_rsa_context *prv )
{
    if( mbedtls_rsa_check_pubkey( pub ) != 0 ||
        mbedtls_rsa_check_privkey( prv ) != 0 )
    {
        return( MBEDTLS_ERR_RSA_KEY_CHECK_FAILED );
    }

    if( mbedtls_mpi_cmp_mpi( &pub->N, &prv->N ) != 0 ||
        mbedtls_mpi_cmp_mpi( &pub->E, &prv->E ) != 0 )
    {
        return( MBEDTLS_ERR_RSA_KEY_CHECK_FAILED );
    }

    return( 0 );
}
