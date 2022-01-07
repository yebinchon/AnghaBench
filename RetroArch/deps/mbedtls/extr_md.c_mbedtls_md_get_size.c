
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char size; } ;
typedef TYPE_1__ mbedtls_md_info_t ;



unsigned char mbedtls_md_get_size( const mbedtls_md_info_t *md_info )
{
    if( md_info == ((void*)0) )
        return( 0 );

    return md_info->size;
}
