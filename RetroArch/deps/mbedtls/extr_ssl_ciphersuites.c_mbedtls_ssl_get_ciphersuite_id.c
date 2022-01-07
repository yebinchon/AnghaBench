
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; } ;
typedef TYPE_1__ mbedtls_ssl_ciphersuite_t ;


 TYPE_1__* mbedtls_ssl_ciphersuite_from_string (char const*) ;

int mbedtls_ssl_get_ciphersuite_id( const char *ciphersuite_name )
{
    const mbedtls_ssl_ciphersuite_t *cur;

    cur = mbedtls_ssl_ciphersuite_from_string( ciphersuite_name );

    if( cur == ((void*)0) )
        return( 0 );

    return( cur->id );
}
