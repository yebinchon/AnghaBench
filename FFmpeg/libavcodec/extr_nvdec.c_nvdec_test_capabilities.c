
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int nMaxMBCount; int nMinWidth; int nMaxWidth; int nMinHeight; int nMaxHeight; scalar_t__ bIsSupported; int nBitDepthMinus8; int eChromaFormat; int eCodecType; int member_0; } ;
struct TYPE_10__ {int ulWidth; int ulHeight; int bitDepthMinus8; int ChromaFormat; int CodecType; } ;
struct TYPE_9__ {TYPE_1__* cvdl; } ;
struct TYPE_8__ {int (* cuvidGetDecoderCaps ) (TYPE_4__*) ;} ;
typedef TYPE_2__ NVDECDecoder ;
typedef TYPE_3__ CUVIDDECODECREATEINFO ;
typedef TYPE_4__ CUVIDDECODECAPS ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int AV_LOG_VERBOSE ;
 int AV_LOG_WARNING ;
 int CHECK_CU (int ) ;
 int EINVAL ;
 int av_log (void*,int ,char*,...) ;
 int stub1 (TYPE_4__*) ;

__attribute__((used)) static int nvdec_test_capabilities(NVDECDecoder *decoder,
                                   CUVIDDECODECREATEINFO *params, void *logctx)
{
    int ret;
    CUVIDDECODECAPS caps = { 0 };

    caps.eCodecType = params->CodecType;
    caps.eChromaFormat = params->ChromaFormat;
    caps.nBitDepthMinus8 = params->bitDepthMinus8;

    if (!decoder->cvdl->cuvidGetDecoderCaps) {
        av_log(logctx, AV_LOG_WARNING, "Used Nvidia driver is too old to perform a capability check.\n");
        av_log(logctx, AV_LOG_WARNING, "The minimum required version is "



            "378.13"

            ". Continuing blind.\n");
        return 0;
    }

    ret = CHECK_CU(decoder->cvdl->cuvidGetDecoderCaps(&caps));
    if (ret < 0)
        return ret;

    av_log(logctx, AV_LOG_VERBOSE, "NVDEC capabilities:\n");
    av_log(logctx, AV_LOG_VERBOSE, "format supported: %s, max_mb_count: %d\n",
           caps.bIsSupported ? "yes" : "no", caps.nMaxMBCount);
    av_log(logctx, AV_LOG_VERBOSE, "min_width: %d, max_width: %d\n",
           caps.nMinWidth, caps.nMaxWidth);
    av_log(logctx, AV_LOG_VERBOSE, "min_height: %d, max_height: %d\n",
           caps.nMinHeight, caps.nMaxHeight);

    if (!caps.bIsSupported) {
        av_log(logctx, AV_LOG_ERROR, "Hardware is lacking required capabilities\n");
        return AVERROR(EINVAL);
    }

    if (params->ulWidth > caps.nMaxWidth || params->ulWidth < caps.nMinWidth) {
        av_log(logctx, AV_LOG_ERROR, "Video width %d not within range from %d to %d\n",
               (int)params->ulWidth, caps.nMinWidth, caps.nMaxWidth);
        return AVERROR(EINVAL);
    }

    if (params->ulHeight > caps.nMaxHeight || params->ulHeight < caps.nMinHeight) {
        av_log(logctx, AV_LOG_ERROR, "Video height %d not within range from %d to %d\n",
               (int)params->ulHeight, caps.nMinHeight, caps.nMaxHeight);
        return AVERROR(EINVAL);
    }

    if ((params->ulWidth * params->ulHeight) / 256 > caps.nMaxMBCount) {
        av_log(logctx, AV_LOG_ERROR, "Video macroblock count %d exceeds maximum of %d\n",
               (int)(params->ulWidth * params->ulHeight) / 256, caps.nMaxMBCount);
        return AVERROR(EINVAL);
    }

    return 0;
}
