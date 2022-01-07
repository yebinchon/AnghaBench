
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Q; int d; int grp; } ;
typedef TYPE_1__ mbedtls_ecp_keypair ;


 int mbedtls_ecp_group_free (int *) ;
 int mbedtls_ecp_point_free (int *) ;
 int mbedtls_mpi_free (int *) ;

void mbedtls_ecp_keypair_free( mbedtls_ecp_keypair *key )
{
    if( key == ((void*)0) )
        return;

    mbedtls_ecp_group_free( &key->grp );
    mbedtls_mpi_free( &key->d );
    mbedtls_ecp_point_free( &key->Q );
}
