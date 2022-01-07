
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_7__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int Z; int Y; int X; } ;
typedef TYPE_2__ mbedtls_ecp_point ;
struct TYPE_10__ {int Z; int Y; int X; } ;
struct TYPE_13__ {scalar_t__ id; int G; } ;
struct TYPE_12__ {TYPE_1__ Q; TYPE_7__ grp; int d; } ;
typedef TYPE_3__ mbedtls_ecp_keypair ;
typedef int mbedtls_ecp_group ;


 scalar_t__ MBEDTLS_ECP_DP_NONE ;
 int MBEDTLS_ERR_ECP_BAD_INPUT_DATA ;
 int MBEDTLS_MPI_CHK (int ) ;
 int mbedtls_ecp_group_copy (int *,TYPE_7__*) ;
 int mbedtls_ecp_group_free (int *) ;
 int mbedtls_ecp_group_init (int *) ;
 int mbedtls_ecp_mul (int *,TYPE_2__*,int *,int *,int *,int *) ;
 int mbedtls_ecp_point_free (TYPE_2__*) ;
 int mbedtls_ecp_point_init (TYPE_2__*) ;
 scalar_t__ mbedtls_mpi_cmp_mpi (int *,int *) ;

int mbedtls_ecp_check_pub_priv( const mbedtls_ecp_keypair *pub, const mbedtls_ecp_keypair *prv )
{
    int ret;
    mbedtls_ecp_point Q;
    mbedtls_ecp_group grp;

    if( pub->grp.id == MBEDTLS_ECP_DP_NONE ||
        pub->grp.id != prv->grp.id ||
        mbedtls_mpi_cmp_mpi( &pub->Q.X, &prv->Q.X ) ||
        mbedtls_mpi_cmp_mpi( &pub->Q.Y, &prv->Q.Y ) ||
        mbedtls_mpi_cmp_mpi( &pub->Q.Z, &prv->Q.Z ) )
    {
        return( MBEDTLS_ERR_ECP_BAD_INPUT_DATA );
    }

    mbedtls_ecp_point_init( &Q );
    mbedtls_ecp_group_init( &grp );


    mbedtls_ecp_group_copy( &grp, &prv->grp );


    MBEDTLS_MPI_CHK( mbedtls_ecp_mul( &grp, &Q, &prv->d, &prv->grp.G, ((void*)0), ((void*)0) ) );

    if( mbedtls_mpi_cmp_mpi( &Q.X, &prv->Q.X ) ||
        mbedtls_mpi_cmp_mpi( &Q.Y, &prv->Q.Y ) ||
        mbedtls_mpi_cmp_mpi( &Q.Z, &prv->Q.Z ) )
    {
        ret = MBEDTLS_ERR_ECP_BAD_INPUT_DATA;
        goto cleanup;
    }

cleanup:
    mbedtls_ecp_point_free( &Q );
    mbedtls_ecp_group_free( &grp );

    return( ret );
}
