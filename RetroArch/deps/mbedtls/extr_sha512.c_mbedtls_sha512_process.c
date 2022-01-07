
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {scalar_t__* state; } ;
typedef TYPE_1__ mbedtls_sha512_context ;


 int GET_UINT64_BE (scalar_t__,unsigned char const*,int) ;
 int * K ;
 int P (scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ) ;
 scalar_t__ S0 (scalar_t__) ;
 scalar_t__ S1 (scalar_t__) ;

void mbedtls_sha512_process( mbedtls_sha512_context *ctx, const unsigned char data[128] )
{
    int i;
    uint64_t temp1, temp2, W[80];
    uint64_t A, B, C, D, E, F, G, H;
    for( i = 0; i < 16; i++ )
    {
        GET_UINT64_BE( W[i], data, i << 3 );
    }

    for( ; i < 80; i++ )
    {
        W[i] = (((W[i - 2] >> 19) | (W[i - 2] << (64 - 19))) ^ ((W[i - 2] >> 61) | (W[i - 2] << (64 - 61))) ^ (W[i - 2] >> 6)) + W[i - 7] +
               (((W[i - 15] >> 1) | (W[i - 15] << (64 - 1))) ^ ((W[i - 15] >> 8) | (W[i - 15] << (64 - 8))) ^ (W[i - 15] >> 7)) + W[i - 16];
    }

    A = ctx->state[0];
    B = ctx->state[1];
    C = ctx->state[2];
    D = ctx->state[3];
    E = ctx->state[4];
    F = ctx->state[5];
    G = ctx->state[6];
    H = ctx->state[7];
    i = 0;

    do
    {
        { temp1 = H + (((E >> 14) | (E << (64 - 14))) ^ ((E >> 18) | (E << (64 - 18))) ^ ((E >> 41) | (E << (64 - 41)))) + (G ^ (E & (F ^ G))) + K[i] + W[i]; temp2 = (((A >> 28) | (A << (64 - 28))) ^ ((A >> 34) | (A << (64 - 34))) ^ ((A >> 39) | (A << (64 - 39)))) + ((A & B) | (C & (A | B))); D += temp1; H = temp1 + temp2; }; i++;
        { temp1 = G + (((D >> 14) | (D << (64 - 14))) ^ ((D >> 18) | (D << (64 - 18))) ^ ((D >> 41) | (D << (64 - 41)))) + (F ^ (D & (E ^ F))) + K[i] + W[i]; temp2 = (((H >> 28) | (H << (64 - 28))) ^ ((H >> 34) | (H << (64 - 34))) ^ ((H >> 39) | (H << (64 - 39)))) + ((H & A) | (B & (H | A))); C += temp1; G = temp1 + temp2; }; i++;
        { temp1 = F + (((C >> 14) | (C << (64 - 14))) ^ ((C >> 18) | (C << (64 - 18))) ^ ((C >> 41) | (C << (64 - 41)))) + (E ^ (C & (D ^ E))) + K[i] + W[i]; temp2 = (((G >> 28) | (G << (64 - 28))) ^ ((G >> 34) | (G << (64 - 34))) ^ ((G >> 39) | (G << (64 - 39)))) + ((G & H) | (A & (G | H))); B += temp1; F = temp1 + temp2; }; i++;
        { temp1 = E + (((B >> 14) | (B << (64 - 14))) ^ ((B >> 18) | (B << (64 - 18))) ^ ((B >> 41) | (B << (64 - 41)))) + (D ^ (B & (C ^ D))) + K[i] + W[i]; temp2 = (((F >> 28) | (F << (64 - 28))) ^ ((F >> 34) | (F << (64 - 34))) ^ ((F >> 39) | (F << (64 - 39)))) + ((F & G) | (H & (F | G))); A += temp1; E = temp1 + temp2; }; i++;
        { temp1 = D + (((A >> 14) | (A << (64 - 14))) ^ ((A >> 18) | (A << (64 - 18))) ^ ((A >> 41) | (A << (64 - 41)))) + (C ^ (A & (B ^ C))) + K[i] + W[i]; temp2 = (((E >> 28) | (E << (64 - 28))) ^ ((E >> 34) | (E << (64 - 34))) ^ ((E >> 39) | (E << (64 - 39)))) + ((E & F) | (G & (E | F))); H += temp1; D = temp1 + temp2; }; i++;
        { temp1 = C + (((H >> 14) | (H << (64 - 14))) ^ ((H >> 18) | (H << (64 - 18))) ^ ((H >> 41) | (H << (64 - 41)))) + (B ^ (H & (A ^ B))) + K[i] + W[i]; temp2 = (((D >> 28) | (D << (64 - 28))) ^ ((D >> 34) | (D << (64 - 34))) ^ ((D >> 39) | (D << (64 - 39)))) + ((D & E) | (F & (D | E))); G += temp1; C = temp1 + temp2; }; i++;
        { temp1 = B + (((G >> 14) | (G << (64 - 14))) ^ ((G >> 18) | (G << (64 - 18))) ^ ((G >> 41) | (G << (64 - 41)))) + (A ^ (G & (H ^ A))) + K[i] + W[i]; temp2 = (((C >> 28) | (C << (64 - 28))) ^ ((C >> 34) | (C << (64 - 34))) ^ ((C >> 39) | (C << (64 - 39)))) + ((C & D) | (E & (C | D))); F += temp1; B = temp1 + temp2; }; i++;
        { temp1 = A + (((F >> 14) | (F << (64 - 14))) ^ ((F >> 18) | (F << (64 - 18))) ^ ((F >> 41) | (F << (64 - 41)))) + (H ^ (F & (G ^ H))) + K[i] + W[i]; temp2 = (((B >> 28) | (B << (64 - 28))) ^ ((B >> 34) | (B << (64 - 34))) ^ ((B >> 39) | (B << (64 - 39)))) + ((B & C) | (D & (B | C))); E += temp1; A = temp1 + temp2; }; i++;
    }
    while( i < 80 );

    ctx->state[0] += A;
    ctx->state[1] += B;
    ctx->state[2] += C;
    ctx->state[3] += D;
    ctx->state[4] += E;
    ctx->state[5] += F;
    ctx->state[6] += G;
    ctx->state[7] += H;
}
