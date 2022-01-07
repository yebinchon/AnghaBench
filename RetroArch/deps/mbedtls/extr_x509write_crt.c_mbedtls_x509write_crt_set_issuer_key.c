
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * issuer_key; } ;
typedef TYPE_1__ mbedtls_x509write_cert ;
typedef int mbedtls_pk_context ;



void mbedtls_x509write_crt_set_issuer_key( mbedtls_x509write_cert *ctx, mbedtls_pk_context *key )
{
    ctx->issuer_key = key;
}
