
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* par_in; TYPE_2__* priv_data; } ;
struct TYPE_8__ {int length_size; int extradata_parsed; } ;
struct TYPE_7__ {scalar_t__ extradata_size; int extradata; } ;
typedef TYPE_2__ HEVCBSFContext ;
typedef TYPE_3__ AVBSFContext ;


 int AV_LOG_VERBOSE ;
 int AV_RB24 (int ) ;
 int AV_RB32 (int ) ;
 scalar_t__ MIN_HEVCC_LENGTH ;
 int av_log (TYPE_3__*,int ,char*) ;
 int hevc_extradata_to_annexb (TYPE_3__*) ;

__attribute__((used)) static int hevc_mp4toannexb_init(AVBSFContext *ctx)
{
    HEVCBSFContext *s = ctx->priv_data;
    int ret;

    if (ctx->par_in->extradata_size < MIN_HEVCC_LENGTH ||
        AV_RB24(ctx->par_in->extradata) == 1 ||
        AV_RB32(ctx->par_in->extradata) == 1) {
        av_log(ctx, AV_LOG_VERBOSE,
               "The input looks like it is Annex B already\n");
    } else {
        ret = hevc_extradata_to_annexb(ctx);
        if (ret < 0)
            return ret;
        s->length_size = ret;
        s->extradata_parsed = 1;
    }

    return 0;
}
