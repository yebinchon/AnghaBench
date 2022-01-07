
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct sal_md5_context {scalar_t__* state; } ;


 int GET_UINT32 (scalar_t__,int *,int) ;
 int P (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int,int,int) ;

void sal_md5_process( struct sal_md5_context *ctx, uint8_t data[64] )
{
    uint32_t A, B, C, D, X[16];

    GET_UINT32( X[0], data, 0 );
    GET_UINT32( X[1], data, 4 );
    GET_UINT32( X[2], data, 8 );
    GET_UINT32( X[3], data, 12 );
    GET_UINT32( X[4], data, 16 );
    GET_UINT32( X[5], data, 20 );
    GET_UINT32( X[6], data, 24 );
    GET_UINT32( X[7], data, 28 );
    GET_UINT32( X[8], data, 32 );
    GET_UINT32( X[9], data, 36 );
    GET_UINT32( X[10], data, 40 );
    GET_UINT32( X[11], data, 44 );
    GET_UINT32( X[12], data, 48 );
    GET_UINT32( X[13], data, 52 );
    GET_UINT32( X[14], data, 56 );
    GET_UINT32( X[15], data, 60 );
    A = ctx->state[0];
    B = ctx->state[1];
    C = ctx->state[2];
    D = ctx->state[3];



    { A += (D ^ (B & (C ^ D))) + X[0] + 0xD76AA478; A = ((A << 7) | ((A & 0xFFFFFFFF) >> (32 - 7))) + B; };
    { D += (C ^ (A & (B ^ C))) + X[1] + 0xE8C7B756; D = ((D << 12) | ((D & 0xFFFFFFFF) >> (32 - 12))) + A; };
    { C += (B ^ (D & (A ^ B))) + X[2] + 0x242070DB; C = ((C << 17) | ((C & 0xFFFFFFFF) >> (32 - 17))) + D; };
    { B += (A ^ (C & (D ^ A))) + X[3] + 0xC1BDCEEE; B = ((B << 22) | ((B & 0xFFFFFFFF) >> (32 - 22))) + C; };
    { A += (D ^ (B & (C ^ D))) + X[4] + 0xF57C0FAF; A = ((A << 7) | ((A & 0xFFFFFFFF) >> (32 - 7))) + B; };
    { D += (C ^ (A & (B ^ C))) + X[5] + 0x4787C62A; D = ((D << 12) | ((D & 0xFFFFFFFF) >> (32 - 12))) + A; };
    { C += (B ^ (D & (A ^ B))) + X[6] + 0xA8304613; C = ((C << 17) | ((C & 0xFFFFFFFF) >> (32 - 17))) + D; };
    { B += (A ^ (C & (D ^ A))) + X[7] + 0xFD469501; B = ((B << 22) | ((B & 0xFFFFFFFF) >> (32 - 22))) + C; };
    { A += (D ^ (B & (C ^ D))) + X[8] + 0x698098D8; A = ((A << 7) | ((A & 0xFFFFFFFF) >> (32 - 7))) + B; };
    { D += (C ^ (A & (B ^ C))) + X[9] + 0x8B44F7AF; D = ((D << 12) | ((D & 0xFFFFFFFF) >> (32 - 12))) + A; };
    { C += (B ^ (D & (A ^ B))) + X[10] + 0xFFFF5BB1; C = ((C << 17) | ((C & 0xFFFFFFFF) >> (32 - 17))) + D; };
    { B += (A ^ (C & (D ^ A))) + X[11] + 0x895CD7BE; B = ((B << 22) | ((B & 0xFFFFFFFF) >> (32 - 22))) + C; };
    { A += (D ^ (B & (C ^ D))) + X[12] + 0x6B901122; A = ((A << 7) | ((A & 0xFFFFFFFF) >> (32 - 7))) + B; };
    { D += (C ^ (A & (B ^ C))) + X[13] + 0xFD987193; D = ((D << 12) | ((D & 0xFFFFFFFF) >> (32 - 12))) + A; };
    { C += (B ^ (D & (A ^ B))) + X[14] + 0xA679438E; C = ((C << 17) | ((C & 0xFFFFFFFF) >> (32 - 17))) + D; };
    { B += (A ^ (C & (D ^ A))) + X[15] + 0x49B40821; B = ((B << 22) | ((B & 0xFFFFFFFF) >> (32 - 22))) + C; };





    { A += (C ^ (D & (B ^ C))) + X[1] + 0xF61E2562; A = ((A << 5) | ((A & 0xFFFFFFFF) >> (32 - 5))) + B; };
    { D += (B ^ (C & (A ^ B))) + X[6] + 0xC040B340; D = ((D << 9) | ((D & 0xFFFFFFFF) >> (32 - 9))) + A; };
    { C += (A ^ (B & (D ^ A))) + X[11] + 0x265E5A51; C = ((C << 14) | ((C & 0xFFFFFFFF) >> (32 - 14))) + D; };
    { B += (D ^ (A & (C ^ D))) + X[0] + 0xE9B6C7AA; B = ((B << 20) | ((B & 0xFFFFFFFF) >> (32 - 20))) + C; };
    { A += (C ^ (D & (B ^ C))) + X[5] + 0xD62F105D; A = ((A << 5) | ((A & 0xFFFFFFFF) >> (32 - 5))) + B; };
    { D += (B ^ (C & (A ^ B))) + X[10] + 0x02441453; D = ((D << 9) | ((D & 0xFFFFFFFF) >> (32 - 9))) + A; };
    { C += (A ^ (B & (D ^ A))) + X[15] + 0xD8A1E681; C = ((C << 14) | ((C & 0xFFFFFFFF) >> (32 - 14))) + D; };
    { B += (D ^ (A & (C ^ D))) + X[4] + 0xE7D3FBC8; B = ((B << 20) | ((B & 0xFFFFFFFF) >> (32 - 20))) + C; };
    { A += (C ^ (D & (B ^ C))) + X[9] + 0x21E1CDE6; A = ((A << 5) | ((A & 0xFFFFFFFF) >> (32 - 5))) + B; };
    { D += (B ^ (C & (A ^ B))) + X[14] + 0xC33707D6; D = ((D << 9) | ((D & 0xFFFFFFFF) >> (32 - 9))) + A; };
    { C += (A ^ (B & (D ^ A))) + X[3] + 0xF4D50D87; C = ((C << 14) | ((C & 0xFFFFFFFF) >> (32 - 14))) + D; };
    { B += (D ^ (A & (C ^ D))) + X[8] + 0x455A14ED; B = ((B << 20) | ((B & 0xFFFFFFFF) >> (32 - 20))) + C; };
    { A += (C ^ (D & (B ^ C))) + X[13] + 0xA9E3E905; A = ((A << 5) | ((A & 0xFFFFFFFF) >> (32 - 5))) + B; };
    { D += (B ^ (C & (A ^ B))) + X[2] + 0xFCEFA3F8; D = ((D << 9) | ((D & 0xFFFFFFFF) >> (32 - 9))) + A; };
    { C += (A ^ (B & (D ^ A))) + X[7] + 0x676F02D9; C = ((C << 14) | ((C & 0xFFFFFFFF) >> (32 - 14))) + D; };
    { B += (D ^ (A & (C ^ D))) + X[12] + 0x8D2A4C8A; B = ((B << 20) | ((B & 0xFFFFFFFF) >> (32 - 20))) + C; };





    { A += (B ^ C ^ D) + X[5] + 0xFFFA3942; A = ((A << 4) | ((A & 0xFFFFFFFF) >> (32 - 4))) + B; };
    { D += (A ^ B ^ C) + X[8] + 0x8771F681; D = ((D << 11) | ((D & 0xFFFFFFFF) >> (32 - 11))) + A; };
    { C += (D ^ A ^ B) + X[11] + 0x6D9D6122; C = ((C << 16) | ((C & 0xFFFFFFFF) >> (32 - 16))) + D; };
    { B += (C ^ D ^ A) + X[14] + 0xFDE5380C; B = ((B << 23) | ((B & 0xFFFFFFFF) >> (32 - 23))) + C; };
    { A += (B ^ C ^ D) + X[1] + 0xA4BEEA44; A = ((A << 4) | ((A & 0xFFFFFFFF) >> (32 - 4))) + B; };
    { D += (A ^ B ^ C) + X[4] + 0x4BDECFA9; D = ((D << 11) | ((D & 0xFFFFFFFF) >> (32 - 11))) + A; };
    { C += (D ^ A ^ B) + X[7] + 0xF6BB4B60; C = ((C << 16) | ((C & 0xFFFFFFFF) >> (32 - 16))) + D; };
    { B += (C ^ D ^ A) + X[10] + 0xBEBFBC70; B = ((B << 23) | ((B & 0xFFFFFFFF) >> (32 - 23))) + C; };
    { A += (B ^ C ^ D) + X[13] + 0x289B7EC6; A = ((A << 4) | ((A & 0xFFFFFFFF) >> (32 - 4))) + B; };
    { D += (A ^ B ^ C) + X[0] + 0xEAA127FA; D = ((D << 11) | ((D & 0xFFFFFFFF) >> (32 - 11))) + A; };
    { C += (D ^ A ^ B) + X[3] + 0xD4EF3085; C = ((C << 16) | ((C & 0xFFFFFFFF) >> (32 - 16))) + D; };
    { B += (C ^ D ^ A) + X[6] + 0x04881D05; B = ((B << 23) | ((B & 0xFFFFFFFF) >> (32 - 23))) + C; };
    { A += (B ^ C ^ D) + X[9] + 0xD9D4D039; A = ((A << 4) | ((A & 0xFFFFFFFF) >> (32 - 4))) + B; };
    { D += (A ^ B ^ C) + X[12] + 0xE6DB99E5; D = ((D << 11) | ((D & 0xFFFFFFFF) >> (32 - 11))) + A; };
    { C += (D ^ A ^ B) + X[15] + 0x1FA27CF8; C = ((C << 16) | ((C & 0xFFFFFFFF) >> (32 - 16))) + D; };
    { B += (C ^ D ^ A) + X[2] + 0xC4AC5665; B = ((B << 23) | ((B & 0xFFFFFFFF) >> (32 - 23))) + C; };





    { A += (C ^ (B | ~D)) + X[0] + 0xF4292244; A = ((A << 6) | ((A & 0xFFFFFFFF) >> (32 - 6))) + B; };
    { D += (B ^ (A | ~C)) + X[7] + 0x432AFF97; D = ((D << 10) | ((D & 0xFFFFFFFF) >> (32 - 10))) + A; };
    { C += (A ^ (D | ~B)) + X[14] + 0xAB9423A7; C = ((C << 15) | ((C & 0xFFFFFFFF) >> (32 - 15))) + D; };
    { B += (D ^ (C | ~A)) + X[5] + 0xFC93A039; B = ((B << 21) | ((B & 0xFFFFFFFF) >> (32 - 21))) + C; };
    { A += (C ^ (B | ~D)) + X[12] + 0x655B59C3; A = ((A << 6) | ((A & 0xFFFFFFFF) >> (32 - 6))) + B; };
    { D += (B ^ (A | ~C)) + X[3] + 0x8F0CCC92; D = ((D << 10) | ((D & 0xFFFFFFFF) >> (32 - 10))) + A; };
    { C += (A ^ (D | ~B)) + X[10] + 0xFFEFF47D; C = ((C << 15) | ((C & 0xFFFFFFFF) >> (32 - 15))) + D; };
    { B += (D ^ (C | ~A)) + X[1] + 0x85845DD1; B = ((B << 21) | ((B & 0xFFFFFFFF) >> (32 - 21))) + C; };
    { A += (C ^ (B | ~D)) + X[8] + 0x6FA87E4F; A = ((A << 6) | ((A & 0xFFFFFFFF) >> (32 - 6))) + B; };
    { D += (B ^ (A | ~C)) + X[15] + 0xFE2CE6E0; D = ((D << 10) | ((D & 0xFFFFFFFF) >> (32 - 10))) + A; };
    { C += (A ^ (D | ~B)) + X[6] + 0xA3014314; C = ((C << 15) | ((C & 0xFFFFFFFF) >> (32 - 15))) + D; };
    { B += (D ^ (C | ~A)) + X[13] + 0x4E0811A1; B = ((B << 21) | ((B & 0xFFFFFFFF) >> (32 - 21))) + C; };
    { A += (C ^ (B | ~D)) + X[4] + 0xF7537E82; A = ((A << 6) | ((A & 0xFFFFFFFF) >> (32 - 6))) + B; };
    { D += (B ^ (A | ~C)) + X[11] + 0xBD3AF235; D = ((D << 10) | ((D & 0xFFFFFFFF) >> (32 - 10))) + A; };
    { C += (A ^ (D | ~B)) + X[2] + 0x2AD7D2BB; C = ((C << 15) | ((C & 0xFFFFFFFF) >> (32 - 15))) + D; };
    { B += (D ^ (C | ~A)) + X[9] + 0xEB86D391; B = ((B << 21) | ((B & 0xFFFFFFFF) >> (32 - 21))) + C; };



    ctx->state[0] += A;
    ctx->state[1] += B;
    ctx->state[2] += C;
    ctx->state[3] += D;
}
