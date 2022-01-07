
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* digest_func ) (unsigned char const*,size_t,unsigned char*) ;} ;
typedef TYPE_1__ mbedtls_md_info_t ;


 int MBEDTLS_ERR_MD_BAD_INPUT_DATA ;
 int stub1 (unsigned char const*,size_t,unsigned char*) ;

int mbedtls_md( const mbedtls_md_info_t *md_info, const unsigned char *input, size_t ilen,
            unsigned char *output )
{
    if( md_info == ((void*)0) )
        return( MBEDTLS_ERR_MD_BAD_INPUT_DATA );

    md_info->digest_func( input, ilen, output );

    return( 0 );
}
