
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int riceY; int * decoded; int gb; } ;
typedef TYPE_1__ APEContext ;


 int decode_array_0000 (TYPE_1__*,int *,int ,int *,int) ;

__attribute__((used)) static void entropy_decode_mono_0000(APEContext *ctx, int blockstodecode)
{
    decode_array_0000(ctx, &ctx->gb, ctx->decoded[0], &ctx->riceY,
                      blockstodecode);
}
