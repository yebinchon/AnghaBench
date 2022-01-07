
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int md_alg; } ;
typedef TYPE_1__ mbedtls_x509write_cert ;
typedef int mbedtls_md_type_t ;



void mbedtls_x509write_crt_set_md_alg( mbedtls_x509write_cert *ctx, mbedtls_md_type_t md_alg )
{
    ctx->md_alg = md_alg;
}
