
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int version; } ;
typedef TYPE_1__ mbedtls_x509write_cert ;



void mbedtls_x509write_crt_set_version( mbedtls_x509write_cert *ctx, int version )
{
    ctx->version = version;
}
