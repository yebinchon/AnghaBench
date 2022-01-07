
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MBEDTLS_SSL_MINOR_VERSION_1 ;
 int MBEDTLS_SSL_TRANSPORT_DATAGRAM ;

void mbedtls_ssl_read_version( int *major, int *minor, int transport,
                       const unsigned char ver[2] )
{
    ((void) transport);

    {
        *major = ver[0];
        *minor = ver[1];
    }
}
