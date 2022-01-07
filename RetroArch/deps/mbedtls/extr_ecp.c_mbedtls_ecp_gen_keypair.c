
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int mbedtls_mpi ;
typedef int mbedtls_ecp_point ;
struct TYPE_4__ {int G; } ;
typedef TYPE_1__ mbedtls_ecp_group ;


 int mbedtls_ecp_gen_keypair_base (TYPE_1__*,int *,int *,int *,int (*) (void*,unsigned char*,size_t),void*) ;

int mbedtls_ecp_gen_keypair( mbedtls_ecp_group *grp,
                             mbedtls_mpi *d, mbedtls_ecp_point *Q,
                             int (*f_rng)(void *, unsigned char *, size_t),
                             void *p_rng )
{
    return( mbedtls_ecp_gen_keypair_base( grp, &grp->G, d, Q, f_rng, p_rng ) );
}
