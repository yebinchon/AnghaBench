
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_net_context ;




 int errno ;

__attribute__((used)) static int net_would_block( const mbedtls_net_context *ctx )
{
    int error = errno;

    switch ( errno = error ) {

    case 129:


    case 128:

        return ( 1 );
    }
    return ( 0 );
}
