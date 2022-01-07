
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ CodecId; scalar_t__ CodecProfile; scalar_t__ CodecLevel; } ;
struct TYPE_6__ {TYPE_1__ mfx; } ;
struct TYPE_7__ {TYPE_2__ param; } ;
typedef TYPE_3__ QSVEncContext ;
typedef int AVCodecContext ;


 int AV_LOG_WARNING ;
 scalar_t__ MFX_CODEC_AVC ;
 scalar_t__ MFX_LEVEL_AVC_21 ;
 scalar_t__ MFX_LEVEL_AVC_41 ;
 scalar_t__ MFX_PROFILE_AVC_BASELINE ;
 int av_log (int *,int ,char*) ;

__attribute__((used)) static void print_interlace_msg(AVCodecContext *avctx, QSVEncContext *q)
{
    if (q->param.mfx.CodecId == MFX_CODEC_AVC) {
        if (q->param.mfx.CodecProfile == MFX_PROFILE_AVC_BASELINE ||
            q->param.mfx.CodecLevel < MFX_LEVEL_AVC_21 ||
            q->param.mfx.CodecLevel > MFX_LEVEL_AVC_41)
            av_log(avctx, AV_LOG_WARNING,
                   "Interlaced coding is supported"
                   " at Main/High Profile Level 2.2-4.0\n");
    }
}
