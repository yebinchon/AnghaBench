
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* par_in; } ;
struct TYPE_6__ {int extradata_size; scalar_t__ extradata; } ;
typedef int MPEG4AudioConfig ;
typedef TYPE_2__ AVBSFContext ;


 int AV_LOG_ERROR ;
 int av_log (TYPE_2__*,int ,char*) ;
 int avpriv_mpeg4audio_get_config2 (int *,scalar_t__,int ,int,TYPE_2__*) ;

__attribute__((used)) static int aac_adtstoasc_init(AVBSFContext *ctx)
{

    if (ctx->par_in->extradata) {
        MPEG4AudioConfig mp4ac;
        int ret = avpriv_mpeg4audio_get_config2(&mp4ac, ctx->par_in->extradata,
                                                ctx->par_in->extradata_size, 1, ctx);
        if (ret < 0) {
            av_log(ctx, AV_LOG_ERROR, "Error parsing AudioSpecificConfig extradata!\n");
            return ret;
        }
    }

    return 0;
}
