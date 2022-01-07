
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t len; int GX; int G; int P; int RP; int X; } ;
typedef TYPE_1__ mbedtls_dhm_context ;


 int DHM_MPI_EXPORT (int *,size_t) ;
 int MBEDTLS_ERR_DHM_BAD_INPUT_DATA ;
 int MBEDTLS_ERR_DHM_MAKE_PARAMS_FAILED ;
 int MBEDTLS_MPI_CHK (int ) ;
 int dhm_check_range (int *,int *) ;
 scalar_t__ mbedtls_mpi_cmp_int (int *,int ) ;
 scalar_t__ mbedtls_mpi_cmp_mpi (int *,int *) ;
 int mbedtls_mpi_exp_mod (int *,int *,int *,int *,int *) ;
 int mbedtls_mpi_fill_random (int *,int,int (*) (void*,unsigned char*,size_t),void*) ;
 int mbedtls_mpi_shift_r (int *,int) ;
 size_t mbedtls_mpi_size (int *) ;

int mbedtls_dhm_make_params( mbedtls_dhm_context *ctx, int x_size,
                     unsigned char *output, size_t *olen,
                     int (*f_rng)(void *, unsigned char *, size_t),
                     void *p_rng )
{
    int ret, count = 0;
    size_t n1, n2, n3;
    unsigned char *p;

    if( mbedtls_mpi_cmp_int( &ctx->P, 0 ) == 0 )
        return( MBEDTLS_ERR_DHM_BAD_INPUT_DATA );




    do
    {
        MBEDTLS_MPI_CHK( mbedtls_mpi_fill_random( &ctx->X, x_size, f_rng, p_rng ) );

        while( mbedtls_mpi_cmp_mpi( &ctx->X, &ctx->P ) >= 0 )
            MBEDTLS_MPI_CHK( mbedtls_mpi_shift_r( &ctx->X, 1 ) );

        if( count++ > 10 )
            return( MBEDTLS_ERR_DHM_MAKE_PARAMS_FAILED );
    }
    while( dhm_check_range( &ctx->X, &ctx->P ) != 0 );




    MBEDTLS_MPI_CHK( mbedtls_mpi_exp_mod( &ctx->GX, &ctx->G, &ctx->X,
                          &ctx->P , &ctx->RP ) );

    if( ( ret = dhm_check_range( &ctx->GX, &ctx->P ) ) != 0 )
        return( ret );
    n1 = mbedtls_mpi_size( &ctx->P );
    n2 = mbedtls_mpi_size( &ctx->G );
    n3 = mbedtls_mpi_size( &ctx->GX );

    p = output;
    MBEDTLS_MPI_CHK( mbedtls_mpi_write_binary( &ctx->P, p + 2, n1 ) ); *p++ = (unsigned char)( n1 >> 8 ); *p++ = (unsigned char)( n1 ); p += n1;;
    MBEDTLS_MPI_CHK( mbedtls_mpi_write_binary( &ctx->G, p + 2, n2 ) ); *p++ = (unsigned char)( n2 >> 8 ); *p++ = (unsigned char)( n2 ); p += n2;;
    MBEDTLS_MPI_CHK( mbedtls_mpi_write_binary( &ctx->GX, p + 2, n3 ) ); *p++ = (unsigned char)( n3 >> 8 ); *p++ = (unsigned char)( n3 ); p += n3;;

    *olen = p - output;

    ctx->len = n1;

cleanup:

    if( ret != 0 )
        return( MBEDTLS_ERR_DHM_MAKE_PARAMS_FAILED + ret );

    return( 0 );
}
