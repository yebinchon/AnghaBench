
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int subject; } ;
typedef TYPE_1__ mbedtls_x509write_cert ;


 int mbedtls_x509_string_to_names (int *,char const*) ;

int mbedtls_x509write_crt_set_subject_name( mbedtls_x509write_cert *ctx,
                                    const char *subject_name )
{
    return mbedtls_x509_string_to_names( &ctx->subject, subject_name );
}
