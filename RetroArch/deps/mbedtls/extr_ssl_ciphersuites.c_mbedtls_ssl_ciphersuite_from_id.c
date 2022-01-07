
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int id; } ;
typedef TYPE_1__ mbedtls_ssl_ciphersuite_t ;


 TYPE_1__* ciphersuite_definitions ;

const mbedtls_ssl_ciphersuite_t *mbedtls_ssl_ciphersuite_from_id( int ciphersuite )
{
    const mbedtls_ssl_ciphersuite_t *cur = ciphersuite_definitions;

    while( cur->id != 0 )
    {
        if( cur->id == ciphersuite )
            return( cur );

        cur++;
    }

    return( ((void*)0) );
}
