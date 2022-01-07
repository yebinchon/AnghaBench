
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Q; int grp; } ;
typedef TYPE_1__ mbedtls_ecp_keypair ;
typedef int buf ;


 int MBEDTLS_ECP_MAX_PT_LEN ;
 int MBEDTLS_ECP_PF_UNCOMPRESSED ;
 int MBEDTLS_ERR_ASN1_BUF_TOO_SMALL ;
 int mbedtls_ecp_point_write_binary (int *,int *,int ,size_t*,unsigned char*,int) ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;

__attribute__((used)) static int pk_write_ec_pubkey( unsigned char **p, unsigned char *start,
                                 mbedtls_ecp_keypair *ec )
{
    int ret;
    size_t len = 0;
    unsigned char buf[MBEDTLS_ECP_MAX_PT_LEN];

    if( ( ret = mbedtls_ecp_point_write_binary( &ec->grp, &ec->Q,
                                        MBEDTLS_ECP_PF_UNCOMPRESSED,
                                        &len, buf, sizeof( buf ) ) ) != 0 )
    {
        return( ret );
    }

    if( *p < start || (size_t)( *p - start ) < len )
        return( MBEDTLS_ERR_ASN1_BUF_TOO_SMALL );

    *p -= len;
    memcpy( *p, buf, len );

    return( (int) len );
}
