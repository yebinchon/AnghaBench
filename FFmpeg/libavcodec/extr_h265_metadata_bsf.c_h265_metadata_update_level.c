
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {TYPE_1__* priv_data; } ;
struct TYPE_5__ {scalar_t__ level; int level_guess; int level_warned; } ;
typedef TYPE_1__ H265MetadataContext ;
typedef TYPE_2__ AVBSFContext ;


 int AV_LOG_WARNING ;
 scalar_t__ LEVEL_AUTO ;
 scalar_t__ LEVEL_UNSET ;
 int av_log (TYPE_2__*,int ,char*) ;

__attribute__((used)) static void h265_metadata_update_level(AVBSFContext *bsf,
                                       uint8_t *level_idc)
{
    H265MetadataContext *ctx = bsf->priv_data;

    if (ctx->level != LEVEL_UNSET) {
        if (ctx->level == LEVEL_AUTO) {
            if (ctx->level_guess) {
                *level_idc = ctx->level_guess;
            } else {
                if (!ctx->level_warned) {
                    av_log(bsf, AV_LOG_WARNING, "Unable to determine level "
                           "of stream: using level 8.5.\n");
                    ctx->level_warned = 1;
                }
                *level_idc = 255;
            }
        } else {
            *level_idc = ctx->level;
        }
    }
}
