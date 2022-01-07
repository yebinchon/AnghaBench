
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* name; } ;
typedef TYPE_1__ mbedtls_ssl_ciphersuite_t ;


 TYPE_1__* mbedtls_ssl_ciphersuite_from_id (int const) ;

const char *mbedtls_ssl_get_ciphersuite_name( const int ciphersuite_id )
{
    const mbedtls_ssl_ciphersuite_t *cur;

    cur = mbedtls_ssl_ciphersuite_from_id( ciphersuite_id );

    if( cur == ((void*)0) )
        return( "unknown" );

    return( cur->name );
}
