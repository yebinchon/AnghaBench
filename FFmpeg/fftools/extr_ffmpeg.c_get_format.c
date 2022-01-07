
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_18__ {int hw_frames_ctx; int codec; TYPE_2__* opaque; } ;
struct TYPE_17__ {int methods; int const pix_fmt; scalar_t__ device_type; } ;
struct TYPE_16__ {int flags; } ;
struct TYPE_15__ {int const pix_fmt; scalar_t__ id; int (* init ) (TYPE_6__*) ;scalar_t__ name; } ;
struct TYPE_14__ {scalar_t__ hwaccel_id; scalar_t__ hwaccel_device_type; int hwaccel_pix_fmt; scalar_t__ hw_frames_ctx; TYPE_1__* st; int file_index; } ;
struct TYPE_13__ {int index; } ;
typedef TYPE_2__ InputStream ;
typedef TYPE_3__ HWAccel ;
typedef TYPE_4__ AVPixFmtDescriptor ;
typedef TYPE_5__ AVCodecHWConfig ;
typedef TYPE_6__ AVCodecContext ;


 int AV_CODEC_HW_CONFIG_METHOD_HW_DEVICE_CTX ;
 int AV_LOG_FATAL ;
 int AV_PIX_FMT_FLAG_HWACCEL ;
 int const AV_PIX_FMT_NONE ;
 scalar_t__ HWACCEL_AUTO ;
 scalar_t__ HWACCEL_GENERIC ;
 int av_buffer_ref (scalar_t__) ;
 scalar_t__ av_hwdevice_get_type_name (scalar_t__) ;
 int av_log (int *,int ,char*,scalar_t__,int ,int ) ;
 TYPE_4__* av_pix_fmt_desc_get (int const) ;
 TYPE_5__* avcodec_get_hw_config (int ,int) ;
 int hwaccel_decode_init (TYPE_6__*) ;
 TYPE_3__* hwaccels ;
 int stub1 (TYPE_6__*) ;

__attribute__((used)) static enum AVPixelFormat get_format(AVCodecContext *s, const enum AVPixelFormat *pix_fmts)
{
    InputStream *ist = s->opaque;
    const enum AVPixelFormat *p;
    int ret;

    for (p = pix_fmts; *p != AV_PIX_FMT_NONE; p++) {
        const AVPixFmtDescriptor *desc = av_pix_fmt_desc_get(*p);
        const AVCodecHWConfig *config = ((void*)0);
        int i;

        if (!(desc->flags & AV_PIX_FMT_FLAG_HWACCEL))
            break;

        if (ist->hwaccel_id == HWACCEL_GENERIC ||
            ist->hwaccel_id == HWACCEL_AUTO) {
            for (i = 0;; i++) {
                config = avcodec_get_hw_config(s->codec, i);
                if (!config)
                    break;
                if (!(config->methods &
                      AV_CODEC_HW_CONFIG_METHOD_HW_DEVICE_CTX))
                    continue;
                if (config->pix_fmt == *p)
                    break;
            }
        }
        if (config) {
            if (config->device_type != ist->hwaccel_device_type) {

                continue;
            }

            ret = hwaccel_decode_init(s);
            if (ret < 0) {
                if (ist->hwaccel_id == HWACCEL_GENERIC) {
                    av_log(((void*)0), AV_LOG_FATAL,
                           "%s hwaccel requested for input stream #%d:%d, "
                           "but cannot be initialized.\n",
                           av_hwdevice_get_type_name(config->device_type),
                           ist->file_index, ist->st->index);
                    return AV_PIX_FMT_NONE;
                }
                continue;
            }
        } else {
            const HWAccel *hwaccel = ((void*)0);
            int i;
            for (i = 0; hwaccels[i].name; i++) {
                if (hwaccels[i].pix_fmt == *p) {
                    hwaccel = &hwaccels[i];
                    break;
                }
            }
            if (!hwaccel) {

                continue;
            }
            if (hwaccel->id != ist->hwaccel_id) {

                continue;
            }

            ret = hwaccel->init(s);
            if (ret < 0) {
                av_log(((void*)0), AV_LOG_FATAL,
                       "%s hwaccel requested for input stream #%d:%d, "
                       "but cannot be initialized.\n", hwaccel->name,
                       ist->file_index, ist->st->index);
                return AV_PIX_FMT_NONE;
            }
        }

        if (ist->hw_frames_ctx) {
            s->hw_frames_ctx = av_buffer_ref(ist->hw_frames_ctx);
            if (!s->hw_frames_ctx)
                return AV_PIX_FMT_NONE;
        }

        ist->hwaccel_pix_fmt = *p;
        break;
    }

    return *p;
}
