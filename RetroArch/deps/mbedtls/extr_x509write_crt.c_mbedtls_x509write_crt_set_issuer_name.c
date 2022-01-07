
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int issuer; } ;
typedef TYPE_1__ mbedtls_x509write_cert ;


 int mbedtls_x509_string_to_names (int *,char const*) ;

int mbedtls_x509write_crt_set_issuer_name( mbedtls_x509write_cert *ctx,
                                   const char *issuer_name )
{
    return mbedtls_x509_string_to_names( &ctx->issuer, issuer_name );
}
