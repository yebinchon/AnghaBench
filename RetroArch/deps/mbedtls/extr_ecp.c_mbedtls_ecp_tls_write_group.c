
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int id; } ;
typedef TYPE_1__ mbedtls_ecp_group ;
struct TYPE_6__ {int tls_id; } ;
typedef TYPE_2__ mbedtls_ecp_curve_info ;


 int MBEDTLS_ECP_TLS_NAMED_CURVE ;
 int MBEDTLS_ERR_ECP_BAD_INPUT_DATA ;
 int MBEDTLS_ERR_ECP_BUFFER_TOO_SMALL ;
 TYPE_2__* mbedtls_ecp_curve_info_from_grp_id (int ) ;

int mbedtls_ecp_tls_write_group( const mbedtls_ecp_group *grp, size_t *olen,
                         unsigned char *buf, size_t blen )
{
    const mbedtls_ecp_curve_info *curve_info;

    if( ( curve_info = mbedtls_ecp_curve_info_from_grp_id( grp->id ) ) == ((void*)0) )
        return( MBEDTLS_ERR_ECP_BAD_INPUT_DATA );




    *olen = 3;
    if( blen < *olen )
        return( MBEDTLS_ERR_ECP_BUFFER_TOO_SMALL );




    *buf++ = MBEDTLS_ECP_TLS_NAMED_CURVE;




    buf[0] = curve_info->tls_id >> 8;
    buf[1] = curve_info->tls_id & 0xFF;

    return( 0 );
}
