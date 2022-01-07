
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int frm2_size; int frm2; int frm0; } ;
typedef TYPE_1__ SANMVideoContext ;


 int memcpy (int ,int ,int ) ;

__attribute__((used)) static int decode_3(SANMVideoContext *ctx)
{
    memcpy(ctx->frm0, ctx->frm2, ctx->frm2_size);
    return 0;
}
