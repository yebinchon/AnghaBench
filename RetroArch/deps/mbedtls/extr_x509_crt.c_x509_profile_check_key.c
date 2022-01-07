
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ rsa_min_bitlen; int allowed_curves; } ;
typedef TYPE_2__ mbedtls_x509_crt_profile ;
typedef scalar_t__ mbedtls_pk_type_t ;
typedef int mbedtls_pk_context ;
typedef int mbedtls_ecp_group_id ;
struct TYPE_5__ {int id; } ;
struct TYPE_7__ {TYPE_1__ grp; } ;


 scalar_t__ MBEDTLS_PK_ECDSA ;
 scalar_t__ MBEDTLS_PK_ECKEY ;
 scalar_t__ MBEDTLS_PK_ECKEY_DH ;
 scalar_t__ MBEDTLS_PK_RSA ;
 scalar_t__ MBEDTLS_PK_RSASSA_PSS ;
 int MBEDTLS_X509_ID_FLAG (int ) ;
 TYPE_4__* mbedtls_pk_ec (int const) ;
 scalar_t__ mbedtls_pk_get_bitlen (int const*) ;

__attribute__((used)) static int x509_profile_check_key( const mbedtls_x509_crt_profile *profile,
                                   mbedtls_pk_type_t pk_alg,
                                   const mbedtls_pk_context *pk )
{
    return( -1 );
}
