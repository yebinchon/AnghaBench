
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int const* supported_digests ;

const int *mbedtls_md_list( void )
{
    return( supported_digests );
}
