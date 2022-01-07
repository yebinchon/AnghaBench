
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ id; int name; } ;
typedef TYPE_1__ mbedtls_ssl_ciphersuite_t ;


 TYPE_1__* ciphersuite_definitions ;
 scalar_t__ strcmp (int ,char const*) ;

const mbedtls_ssl_ciphersuite_t *mbedtls_ssl_ciphersuite_from_string(
                                                const char *ciphersuite_name )
{
    const mbedtls_ssl_ciphersuite_t *cur = ciphersuite_definitions;

    if( ((void*)0) == ciphersuite_name )
        return( ((void*)0) );

    while( cur->id != 0 )
    {
        if( 0 == strcmp( cur->name, ciphersuite_name ) )
            return( cur );

        cur++;
    }

    return( ((void*)0) );
}
