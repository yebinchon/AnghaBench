
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Q; int d; int grp; } ;
typedef TYPE_1__ mbedtls_ecp_keypair ;
typedef int mbedtls_ecp_group_id ;


 int mbedtls_ecp_gen_keypair (int *,int *,int *,int (*) (void*,unsigned char*,size_t),void*) ;
 int mbedtls_ecp_group_load (int *,int ) ;

int mbedtls_ecp_gen_key( mbedtls_ecp_group_id grp_id, mbedtls_ecp_keypair *key,
                int (*f_rng)(void *, unsigned char *, size_t), void *p_rng )
{
    int ret;

    if( ( ret = mbedtls_ecp_group_load( &key->grp, grp_id ) ) != 0 )
        return( ret );

    return( mbedtls_ecp_gen_keypair( &key->grp, &key->d, &key->Q, f_rng, p_rng ) );
}
