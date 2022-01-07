
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int qmin; TYPE_2__* priv_data; } ;
struct TYPE_11__ {int rateControlMode; } ;
struct TYPE_9__ {TYPE_3__ rcParams; } ;
struct TYPE_10__ {int rc; TYPE_1__ encode_config; } ;
typedef TYPE_2__ NvencContext ;
typedef TYPE_3__ NV_ENC_RC_PARAMS ;
typedef TYPE_4__ AVCodecContext ;


 int AV_LOG_WARNING ;







 int av_log (TYPE_4__*,int ,char*) ;
 int set_constqp (TYPE_4__*) ;
 int set_vbr (TYPE_4__*) ;

__attribute__((used)) static void nvenc_override_rate_control(AVCodecContext *avctx)
{
    NvencContext *ctx = avctx->priv_data;
    NV_ENC_RC_PARAMS *rc = &ctx->encode_config.rcParams;

    switch (ctx->rc) {
    case 131:
        set_constqp(avctx);
        return;
    case 128:
        if (avctx->qmin < 0) {
            av_log(avctx, AV_LOG_WARNING,
                   "The variable bitrate rate-control requires "
                   "the 'qmin' option set.\n");
            set_vbr(avctx);
            return;
        }

    case 129:
    case 130:
        set_vbr(avctx);
        break;
    case 134:
    case 133:
    case 132:
        break;
    }

    rc->rateControlMode = ctx->rc;
}
