
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int name; } ;
typedef TYPE_1__ mbedtls_cipher_info_t ;
struct TYPE_6__ {TYPE_1__ const* info; } ;
typedef TYPE_2__ mbedtls_cipher_definition_t ;


 TYPE_2__* mbedtls_cipher_definitions ;
 int strcmp (int ,char const*) ;

const mbedtls_cipher_info_t *mbedtls_cipher_info_from_string( const char *cipher_name )
{
    const mbedtls_cipher_definition_t *def;

    if( ((void*)0) == cipher_name )
        return( ((void*)0) );

    for( def = mbedtls_cipher_definitions; def->info != ((void*)0); def++ )
        if( ! strcmp( def->info->name, cipher_name ) )
            return( def->info );

    return( ((void*)0) );
}
