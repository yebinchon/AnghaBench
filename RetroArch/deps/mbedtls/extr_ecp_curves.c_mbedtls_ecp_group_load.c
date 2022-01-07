
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int mbedtls_ecp_group_id ;
struct TYPE_5__ {int id; int modp; } ;
typedef TYPE_1__ mbedtls_ecp_group ;


 int LOAD_GROUP (int ) ;
 int LOAD_GROUP_A (int ) ;
 int MBEDTLS_ERR_ECP_FEATURE_UNAVAILABLE ;
 int NIST_MODP (int ) ;
 int brainpoolP256r1 ;
 int brainpoolP384r1 ;
 int brainpoolP512r1 ;
 int ecp_mod_p192k1 ;
 int ecp_mod_p224k1 ;
 int ecp_mod_p255 ;
 int ecp_mod_p256k1 ;
 int ecp_use_curve25519 (TYPE_1__*) ;
 int mbedtls_ecp_group_free (TYPE_1__*) ;
 int p192 ;
 int p224 ;
 int p256 ;
 int p384 ;
 int p521 ;
 int secp192k1 ;
 int secp192r1 ;
 int secp224k1 ;
 int secp224r1 ;
 int secp256k1 ;
 int secp256r1 ;
 int secp384r1 ;
 int secp521r1 ;

int mbedtls_ecp_group_load( mbedtls_ecp_group *grp, mbedtls_ecp_group_id id )
{
    mbedtls_ecp_group_free( grp );

    grp->id = id;

    switch( id )
    {
        default:
            mbedtls_ecp_group_free( grp );
            return( MBEDTLS_ERR_ECP_FEATURE_UNAVAILABLE );
    }
}
