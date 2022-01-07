
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_md_type_t ;
typedef int mbedtls_md_info_t ;


 size_t mbedtls_md_get_size (int const*) ;
 int * mbedtls_md_info_from_type (int ) ;

__attribute__((used)) static int pk_hashlen_helper( mbedtls_md_type_t md_alg, size_t *hash_len )
{
    const mbedtls_md_info_t *md_info;

    if( *hash_len != 0 )
        return( 0 );

    if( ( md_info = mbedtls_md_info_from_type( md_alg ) ) == ((void*)0) )
        return( -1 );

    *hash_len = mbedtls_md_get_size( md_info );
    return( 0 );
}
