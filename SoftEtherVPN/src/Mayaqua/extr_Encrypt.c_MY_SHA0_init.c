
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* state; scalar_t__ count; } ;
typedef TYPE_1__ MY_SHA0_CTX ;



void MY_SHA0_init(MY_SHA0_CTX* ctx) {

 ctx->state[0] = 0x67452301;
 ctx->state[1] = 0xEFCDAB89;
 ctx->state[2] = 0x98BADCFE;
 ctx->state[3] = 0x10325476;
 ctx->state[4] = 0xC3D2E1F0;
 ctx->count = 0;
}
