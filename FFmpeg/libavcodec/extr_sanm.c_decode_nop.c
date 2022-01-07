
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int avctx; } ;
typedef TYPE_1__ SANMVideoContext ;


 int AVERROR_PATCHWELCOME ;
 int avpriv_request_sample (int ,char*) ;

__attribute__((used)) static int decode_nop(SANMVideoContext *ctx)
{
    avpriv_request_sample(ctx->avctx, "Unknown/unsupported compression type");
    return AVERROR_PATCHWELCOME;
}
