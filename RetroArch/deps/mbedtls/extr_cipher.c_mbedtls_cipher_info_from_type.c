
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ mbedtls_cipher_type_t ;
typedef int mbedtls_cipher_info_t ;
struct TYPE_3__ {scalar_t__ const type; int const* info; } ;
typedef TYPE_1__ mbedtls_cipher_definition_t ;


 TYPE_1__* mbedtls_cipher_definitions ;

const mbedtls_cipher_info_t *mbedtls_cipher_info_from_type( const mbedtls_cipher_type_t cipher_type )
{
    const mbedtls_cipher_definition_t *def;

    for( def = mbedtls_cipher_definitions; def->info != ((void*)0); def++ )
        if( def->type == cipher_type )
            return( def->info );

    return( ((void*)0) );
}
