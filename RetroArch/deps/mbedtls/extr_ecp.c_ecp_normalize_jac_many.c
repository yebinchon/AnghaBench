
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int mbedtls_mpi ;
struct TYPE_11__ {int Z; int Y; int X; } ;
typedef TYPE_1__ mbedtls_ecp_point ;
struct TYPE_13__ {int n; } ;
struct TYPE_12__ {TYPE_3__ P; } ;
typedef TYPE_2__ mbedtls_ecp_group ;


 int MBEDTLS_ERR_ECP_ALLOC_FAILED ;
 int MBEDTLS_MPI_CHK (int ) ;
 int MOD_MUL (int ) ;
 int ecp_normalize_jac (TYPE_2__ const*,TYPE_1__*) ;
 scalar_t__ mbedtls_calloc (size_t,int) ;
 int mbedtls_free (int *) ;
 scalar_t__ mbedtls_internal_ecp_grp_capable (TYPE_2__ const*) ;
 int mbedtls_internal_ecp_normalize_jac_many (TYPE_2__ const*,TYPE_1__**,size_t) ;
 int mbedtls_mpi_copy (int *,int *) ;
 int mbedtls_mpi_free (int *) ;
 int mbedtls_mpi_init (int *) ;
 int mbedtls_mpi_inv_mod (int *,int *,TYPE_3__*) ;
 int mbedtls_mpi_mul_mpi (int *,int *,int *) ;
 int mbedtls_mpi_shrink (int *,int ) ;

__attribute__((used)) static int ecp_normalize_jac_many( const mbedtls_ecp_group *grp,
                                   mbedtls_ecp_point *T[], size_t t_len )
{
    int ret;
    size_t i;
    mbedtls_mpi *c, u, Zi, ZZi;

    if( t_len < 2 )
        return( ecp_normalize_jac( grp, *T ) );
    if( ( c = (mbedtls_mpi*)mbedtls_calloc( t_len, sizeof( mbedtls_mpi ) ) ) == ((void*)0) )
        return( MBEDTLS_ERR_ECP_ALLOC_FAILED );

    mbedtls_mpi_init( &u ); mbedtls_mpi_init( &Zi ); mbedtls_mpi_init( &ZZi );




    MBEDTLS_MPI_CHK( mbedtls_mpi_copy( &c[0], &T[0]->Z ) );
    for( i = 1; i < t_len; i++ )
    {
        MBEDTLS_MPI_CHK( mbedtls_mpi_mul_mpi( &c[i], &c[i-1], &T[i]->Z ) );
        MOD_MUL( c[i] );
    }




    MBEDTLS_MPI_CHK( mbedtls_mpi_inv_mod( &u, &c[t_len-1], &grp->P ) );

    for( i = t_len - 1; ; i-- )
    {




        if( i == 0 ) {
            MBEDTLS_MPI_CHK( mbedtls_mpi_copy( &Zi, &u ) );
        }
        else
        {
            MBEDTLS_MPI_CHK( mbedtls_mpi_mul_mpi( &Zi, &u, &c[i-1] ) ); MOD_MUL( Zi );
            MBEDTLS_MPI_CHK( mbedtls_mpi_mul_mpi( &u, &u, &T[i]->Z ) ); MOD_MUL( u );
        }




        MBEDTLS_MPI_CHK( mbedtls_mpi_mul_mpi( &ZZi, &Zi, &Zi ) ); MOD_MUL( ZZi );
        MBEDTLS_MPI_CHK( mbedtls_mpi_mul_mpi( &T[i]->X, &T[i]->X, &ZZi ) ); MOD_MUL( T[i]->X );
        MBEDTLS_MPI_CHK( mbedtls_mpi_mul_mpi( &T[i]->Y, &T[i]->Y, &ZZi ) ); MOD_MUL( T[i]->Y );
        MBEDTLS_MPI_CHK( mbedtls_mpi_mul_mpi( &T[i]->Y, &T[i]->Y, &Zi ) ); MOD_MUL( T[i]->Y );







        MBEDTLS_MPI_CHK( mbedtls_mpi_shrink( &T[i]->X, grp->P.n ) );
        MBEDTLS_MPI_CHK( mbedtls_mpi_shrink( &T[i]->Y, grp->P.n ) );
        mbedtls_mpi_free( &T[i]->Z );

        if( i == 0 )
            break;
    }

cleanup:

    mbedtls_mpi_free( &u ); mbedtls_mpi_free( &Zi ); mbedtls_mpi_free( &ZZi );
    for( i = 0; i < t_len; i++ )
        mbedtls_mpi_free( &c[i] );
    mbedtls_free( c );

    return( ret );
}
