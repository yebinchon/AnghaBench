
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; } ;
typedef TYPE_1__ mbedtls_rsa_context ;



__attribute__((used)) static size_t rsa_get_bitlen( const void *ctx )
{
    return( 8 * ((const mbedtls_rsa_context *) ctx)->len );
}
