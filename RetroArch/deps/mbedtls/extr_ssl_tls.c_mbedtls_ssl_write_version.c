
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MBEDTLS_SSL_MINOR_VERSION_2 ;
 int MBEDTLS_SSL_TRANSPORT_DATAGRAM ;

void mbedtls_ssl_write_version( int major, int minor, int transport,
                        unsigned char ver[2] )
{
    ((void) transport);

    {
        ver[0] = (unsigned char) major;
        ver[1] = (unsigned char) minor;
    }
}
