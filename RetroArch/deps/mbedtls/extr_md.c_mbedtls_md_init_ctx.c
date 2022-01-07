
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbedtls_md_info_t ;
typedef int mbedtls_md_context_t ;


 int mbedtls_md_setup (int *,int const*,int) ;

int mbedtls_md_init_ctx( mbedtls_md_context_t *ctx, const mbedtls_md_info_t *md_info )
{
    return mbedtls_md_setup( ctx, md_info, 1 );
}
