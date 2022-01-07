
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mbedtls_md_type_t ;
struct TYPE_3__ {int type; } ;
typedef TYPE_1__ mbedtls_md_info_t ;


 int MBEDTLS_MD_NONE ;

mbedtls_md_type_t mbedtls_md_get_type( const mbedtls_md_info_t *md_info )
{
    if( md_info == ((void*)0) )
        return( MBEDTLS_MD_NONE );

    return md_info->type;
}
