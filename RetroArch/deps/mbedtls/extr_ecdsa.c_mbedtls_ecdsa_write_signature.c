
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mbedtls_mpi ;
typedef int mbedtls_md_type_t ;
struct TYPE_3__ {int d; int grp; } ;
typedef TYPE_1__ mbedtls_ecdsa_context ;


 int MBEDTLS_MPI_CHK (int ) ;
 int ecdsa_signature_to_asn1 (int *,int *,unsigned char*,size_t*) ;
 int mbedtls_ecdsa_sign (int *,int *,int *,int *,unsigned char const*,size_t,int (*) (void*,unsigned char*,size_t),void*) ;
 int mbedtls_ecdsa_sign_det (int *,int *,int *,int *,unsigned char const*,size_t,int ) ;
 int mbedtls_mpi_free (int *) ;
 int mbedtls_mpi_init (int *) ;

int mbedtls_ecdsa_write_signature( mbedtls_ecdsa_context *ctx, mbedtls_md_type_t md_alg,
                           const unsigned char *hash, size_t hlen,
                           unsigned char *sig, size_t *slen,
                           int (*f_rng)(void *, unsigned char *, size_t),
                           void *p_rng )
{
    int ret;
    mbedtls_mpi r, s;

    mbedtls_mpi_init( &r );
    mbedtls_mpi_init( &s );
    (void) md_alg;

    MBEDTLS_MPI_CHK( mbedtls_ecdsa_sign( &ctx->grp, &r, &s, &ctx->d,
                         hash, hlen, f_rng, p_rng ) );


    MBEDTLS_MPI_CHK( ecdsa_signature_to_asn1( &r, &s, sig, slen ) );

cleanup:
    mbedtls_mpi_free( &r );
    mbedtls_mpi_free( &s );

    return( ret );
}
