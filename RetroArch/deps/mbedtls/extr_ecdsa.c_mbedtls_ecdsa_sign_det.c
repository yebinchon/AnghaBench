
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int const mbedtls_mpi ;
typedef int mbedtls_md_type_t ;
typedef int mbedtls_md_info_t ;
typedef int mbedtls_hmac_drbg_context ;
struct TYPE_5__ {int nbits; } ;
typedef TYPE_1__ mbedtls_ecp_group ;


 int MBEDTLS_ECP_MAX_BYTES ;
 int MBEDTLS_ERR_ECP_BAD_INPUT_DATA ;
 int MBEDTLS_MPI_CHK (int ) ;
 int derive_mpi (TYPE_1__*,int const*,unsigned char const*,size_t) ;
 int mbedtls_ecdsa_sign (TYPE_1__*,int const*,int const*,int const*,unsigned char const*,size_t,int ,int *) ;
 int mbedtls_hmac_drbg_free (int *) ;
 int mbedtls_hmac_drbg_init (int *) ;
 int mbedtls_hmac_drbg_random ;
 int mbedtls_hmac_drbg_seed_buf (int *,int const*,unsigned char*,int) ;
 int * mbedtls_md_info_from_type (int ) ;
 int mbedtls_mpi_free (int const*) ;
 int mbedtls_mpi_init (int const*) ;
 int mbedtls_mpi_write_binary (int const*,unsigned char*,size_t) ;

int mbedtls_ecdsa_sign_det( mbedtls_ecp_group *grp, mbedtls_mpi *r, mbedtls_mpi *s,
                    const mbedtls_mpi *d, const unsigned char *buf, size_t blen,
                    mbedtls_md_type_t md_alg )
{
    int ret;
    mbedtls_hmac_drbg_context rng_ctx;
    unsigned char data[2 * MBEDTLS_ECP_MAX_BYTES];
    size_t grp_len = ( grp->nbits + 7 ) / 8;
    const mbedtls_md_info_t *md_info;
    mbedtls_mpi h;

    if( ( md_info = mbedtls_md_info_from_type( md_alg ) ) == ((void*)0) )
        return( MBEDTLS_ERR_ECP_BAD_INPUT_DATA );

    mbedtls_mpi_init( &h );
    mbedtls_hmac_drbg_init( &rng_ctx );


    MBEDTLS_MPI_CHK( mbedtls_mpi_write_binary( d, data, grp_len ) );
    MBEDTLS_MPI_CHK( derive_mpi( grp, &h, buf, blen ) );
    MBEDTLS_MPI_CHK( mbedtls_mpi_write_binary( &h, data + grp_len, grp_len ) );
    mbedtls_hmac_drbg_seed_buf( &rng_ctx, md_info, data, 2 * grp_len );

    ret = mbedtls_ecdsa_sign( grp, r, s, d, buf, blen,
                      mbedtls_hmac_drbg_random, &rng_ctx );

cleanup:
    mbedtls_hmac_drbg_free( &rng_ctx );
    mbedtls_mpi_free( &h );

    return( ret );
}
