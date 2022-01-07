
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_12__ {scalar_t__ codec_id; } ;
struct TYPE_11__ {int ConfigBitstreamRaw; int guidConfigBitstreamEncryption; } ;
struct TYPE_10__ {int ConfigBitstreamRaw; int guidConfigBitstreamEncryption; } ;
struct TYPE_9__ {scalar_t__ pix_fmt; } ;
typedef int GUID ;
typedef TYPE_1__ FFDXVASharedContext ;
typedef TYPE_2__ DXVA2_ConfigPictureDecode ;
typedef TYPE_3__ D3D11_VIDEO_DECODER_CONFIG ;
typedef TYPE_4__ AVCodecContext ;


 int AVERROR (int ) ;
 scalar_t__ AV_CODEC_ID_H264 ;
 int AV_LOG_VERBOSE ;
 scalar_t__ AV_PIX_FMT_D3D11 ;
 scalar_t__ AV_PIX_FMT_DXVA2_VLD ;
 TYPE_1__* DXVA_SHARED_CONTEXT (TYPE_4__*) ;
 int EINVAL ;
 scalar_t__ IsEqualGUID (int *,int *) ;
 int av_log (TYPE_4__*,int ,char*) ;
 int ff_DXVA2_NoEncrypt ;

__attribute__((used)) static int dxva_get_decoder_configuration(AVCodecContext *avctx,
                                          const void *cfg_list,
                                          unsigned cfg_count)
{
    FFDXVASharedContext *sctx = DXVA_SHARED_CONTEXT(avctx);
    unsigned i, best_score = 0;
    int best_cfg = -1;

    for (i = 0; i < cfg_count; i++) {
        unsigned score;
        UINT ConfigBitstreamRaw;
        GUID guidConfigBitstreamEncryption;
        if (ConfigBitstreamRaw == 1)
            score = 1;
        else if (avctx->codec_id == AV_CODEC_ID_H264 && ConfigBitstreamRaw == 2)
            score = 2;
        else
            continue;
        if (IsEqualGUID(&guidConfigBitstreamEncryption, &ff_DXVA2_NoEncrypt))
            score += 16;
        if (score > best_score) {
            best_score = score;
            best_cfg = i;
        }
    }

    if (!best_score) {
        av_log(avctx, AV_LOG_VERBOSE, "No valid decoder configuration available\n");
        return AVERROR(EINVAL);
    }

    return best_cfg;
}
