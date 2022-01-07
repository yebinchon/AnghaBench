
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int mfxU16 ;
struct TYPE_11__ {int flags; scalar_t__ global_quality; scalar_t__ rc_max_rate; scalar_t__ bit_rate; } ;
struct TYPE_8__ {int RateControlMethod; } ;
struct TYPE_9__ {TYPE_1__ mfx; } ;
struct TYPE_10__ {int look_ahead; int vcm; TYPE_2__ param; } ;
typedef TYPE_3__ QSVEncContext ;
typedef TYPE_4__ AVCodecContext ;


 int AVERROR (int ) ;
 int AV_CODEC_FLAG_QSCALE ;
 int AV_LOG_ERROR ;
 int AV_LOG_VERBOSE ;
 int EINVAL ;
 int ENOSYS ;
 int MFX_RATECONTROL_AVBR ;
 int MFX_RATECONTROL_CBR ;
 int MFX_RATECONTROL_CQP ;
 int MFX_RATECONTROL_ICQ ;
 int MFX_RATECONTROL_LA ;
 int MFX_RATECONTROL_LA_ICQ ;
 int MFX_RATECONTROL_QVBR ;
 int MFX_RATECONTROL_VBR ;
 int MFX_RATECONTROL_VCM ;
 int QSV_HAVE_ICQ ;
 int QSV_HAVE_LA ;
 int QSV_HAVE_VCM ;
 int av_log (TYPE_4__*,int ,char*,...) ;

__attribute__((used)) static int select_rc_mode(AVCodecContext *avctx, QSVEncContext *q)
{
    const char *rc_desc;
    mfxU16 rc_mode;

    int want_la = q->look_ahead;
    int want_qscale = !!(avctx->flags & AV_CODEC_FLAG_QSCALE);
    int want_vcm = q->vcm;

    if (want_la && !QSV_HAVE_LA) {
        av_log(avctx, AV_LOG_ERROR,
               "Lookahead ratecontrol mode requested, but is not supported by this SDK version\n");
        return AVERROR(ENOSYS);
    }
    if (want_vcm && !QSV_HAVE_VCM) {
        av_log(avctx, AV_LOG_ERROR,
               "VCM ratecontrol mode requested, but is not supported by this SDK version\n");
        return AVERROR(ENOSYS);
    }

    if (want_la + want_qscale + want_vcm > 1) {
        av_log(avctx, AV_LOG_ERROR,
               "More than one of: { constant qscale, lookahead, VCM } requested, "
               "only one of them can be used at a time.\n");
        return AVERROR(EINVAL);
    }

    if (!want_qscale && avctx->global_quality > 0 && !QSV_HAVE_ICQ){
        av_log(avctx, AV_LOG_ERROR,
               "ICQ ratecontrol mode requested, but is not supported by this SDK version\n");
        return AVERROR(ENOSYS);
    }

    if (want_qscale) {
        rc_mode = MFX_RATECONTROL_CQP;
        rc_desc = "constant quantization parameter (CQP)";
    }
    else if (avctx->rc_max_rate == avctx->bit_rate) {
        rc_mode = MFX_RATECONTROL_CBR;
        rc_desc = "constant bitrate (CBR)";
    }
    else {
        rc_mode = MFX_RATECONTROL_VBR;
        rc_desc = "variable bitrate (VBR)";
    }

    q->param.mfx.RateControlMethod = rc_mode;
    av_log(avctx, AV_LOG_VERBOSE, "Using the %s ratecontrol method\n", rc_desc);

    return 0;
}
