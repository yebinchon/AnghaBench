
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Q; int grp; } ;
typedef TYPE_1__ mbedtls_ecp_keypair ;


 int mbedtls_ecp_check_pubkey (int *,int *) ;
 int mbedtls_ecp_point_read_binary (int *,int *,unsigned char const*,int) ;

__attribute__((used)) static int pk_get_ecpubkey( unsigned char **p, const unsigned char *end,
                            mbedtls_ecp_keypair *key )
{
    int ret;

    if( ( ret = mbedtls_ecp_point_read_binary( &key->grp, &key->Q,
                    (const unsigned char *) *p, end - *p ) ) == 0 )
    {
        ret = mbedtls_ecp_check_pubkey( &key->grp, &key->Q );
    }




    *p = (unsigned char *) end;

    return( ret );
}
