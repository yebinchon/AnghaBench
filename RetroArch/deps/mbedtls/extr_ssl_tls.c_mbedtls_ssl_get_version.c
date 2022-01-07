
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int minor_ver; TYPE_1__* conf; } ;
typedef TYPE_2__ mbedtls_ssl_context ;
struct TYPE_4__ {scalar_t__ transport; } ;






 scalar_t__ MBEDTLS_SSL_TRANSPORT_DATAGRAM ;

const char *mbedtls_ssl_get_version( const mbedtls_ssl_context *ssl )
{
    switch( ssl->minor_ver )
    {
        case 131:
            return( "SSLv3.0" );

        case 130:
            return( "TLSv1.0" );

        case 129:
            return( "TLSv1.1" );

        case 128:
            return( "TLSv1.2" );

        default:
            return( "unknown" );
    }
}
