
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_4__ {int* P; } ;
typedef TYPE_1__ mbedtls_blowfish_context ;


 int F (TYPE_1__*,int) ;
 int MBEDTLS_BLOWFISH_ROUNDS ;

__attribute__((used)) static void blowfish_dec( mbedtls_blowfish_context *ctx, uint32_t *xl, uint32_t *xr )
{
    uint32_t Xl, Xr, temp;
    short i;

    Xl = *xl;
    Xr = *xr;

    for( i = MBEDTLS_BLOWFISH_ROUNDS + 1; i > 1; --i )
    {
        Xl = Xl ^ ctx->P[i];
        Xr = F( ctx, Xl ) ^ Xr;

        temp = Xl;
        Xl = Xr;
        Xr = temp;
    }

    temp = Xl;
    Xl = Xr;
    Xr = temp;

    Xr = Xr ^ ctx->P[1];
    Xl = Xl ^ ctx->P[0];

    *xl = Xl;
    *xr = Xr;
}
