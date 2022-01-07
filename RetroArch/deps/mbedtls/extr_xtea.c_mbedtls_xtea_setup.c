
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * k; } ;
typedef TYPE_1__ mbedtls_xtea_context ;


 int GET_UINT32_BE (int ,unsigned char const*,int) ;
 int memset (TYPE_1__*,int ,int) ;

void mbedtls_xtea_setup( mbedtls_xtea_context *ctx, const unsigned char key[16] )
{
    int i;

    memset( ctx, 0, sizeof(mbedtls_xtea_context) );

    for( i = 0; i < 4; i++ )
    {
        GET_UINT32_BE( ctx->k[i], key, i << 2 );
    }
}
