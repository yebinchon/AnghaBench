
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_9__ ;
typedef struct TYPE_25__ TYPE_8__ ;
typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_10__ ;


typedef int pix_fmt ;
typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_19__ {unsigned int i; } ;
struct TYPE_20__ {TYPE_2__ value; } ;
struct TYPE_22__ {int type; TYPE_3__ value; } ;
typedef TYPE_5__ VASurfaceAttrib ;
typedef scalar_t__ VAStatus ;
struct TYPE_23__ {int nb_formats; TYPE_4__* formats; } ;
typedef TYPE_6__ VAAPIDeviceContext ;
struct TYPE_26__ {unsigned int min_width; unsigned int min_height; unsigned int max_width; unsigned int max_height; int* valid_sw_formats; int* valid_hw_formats; } ;
struct TYPE_25__ {int driver_quirks; int display; } ;
struct TYPE_24__ {int config_id; } ;
struct TYPE_21__ {int pix_fmt; } ;
struct TYPE_18__ {TYPE_6__* priv; } ;
struct TYPE_17__ {TYPE_1__* internal; TYPE_8__* hwctx; } ;
typedef TYPE_7__ AVVAAPIHWConfig ;
typedef TYPE_8__ AVVAAPIDeviceContext ;
typedef TYPE_9__ AVHWFramesConstraints ;
typedef TYPE_10__ AVHWDeviceContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int AV_PIX_FMT_NONE ;
 int AV_PIX_FMT_VAAPI ;
 int AV_VAAPI_DRIVER_QUIRK_SURFACE_ATTRIBUTES ;
 int ENOMEM ;
 int ENOSYS ;





 scalar_t__ VA_STATUS_SUCCESS ;
 int av_assert0 (int) ;
 int av_freep (TYPE_5__**) ;
 int av_log (TYPE_10__*,int ,char*,scalar_t__,int ) ;
 TYPE_5__* av_malloc (int) ;
 void* av_malloc_array (int,int) ;
 int vaErrorStr (scalar_t__) ;
 scalar_t__ vaQuerySurfaceAttributes (int ,int ,TYPE_5__*,int*) ;
 int vaapi_pix_fmt_from_fourcc (unsigned int) ;

__attribute__((used)) static int vaapi_frames_get_constraints(AVHWDeviceContext *hwdev,
                                        const void *hwconfig,
                                        AVHWFramesConstraints *constraints)
{
    AVVAAPIDeviceContext *hwctx = hwdev->hwctx;
    const AVVAAPIHWConfig *config = hwconfig;
    VAAPIDeviceContext *ctx = hwdev->internal->priv;
    VASurfaceAttrib *attr_list = ((void*)0);
    VAStatus vas;
    enum AVPixelFormat pix_fmt;
    unsigned int fourcc;
    int err, i, j, attr_count, pix_fmt_count;

    if (config &&
        !(hwctx->driver_quirks & AV_VAAPI_DRIVER_QUIRK_SURFACE_ATTRIBUTES)) {
        attr_count = 0;
        vas = vaQuerySurfaceAttributes(hwctx->display, config->config_id,
                                       0, &attr_count);
        if (vas != VA_STATUS_SUCCESS) {
            av_log(hwdev, AV_LOG_ERROR, "Failed to query surface attributes: "
                   "%d (%s).\n", vas, vaErrorStr(vas));
            err = AVERROR(ENOSYS);
            goto fail;
        }

        attr_list = av_malloc(attr_count * sizeof(*attr_list));
        if (!attr_list) {
            err = AVERROR(ENOMEM);
            goto fail;
        }

        vas = vaQuerySurfaceAttributes(hwctx->display, config->config_id,
                                       attr_list, &attr_count);
        if (vas != VA_STATUS_SUCCESS) {
            av_log(hwdev, AV_LOG_ERROR, "Failed to query surface attributes: "
                   "%d (%s).\n", vas, vaErrorStr(vas));
            err = AVERROR(ENOSYS);
            goto fail;
        }

        pix_fmt_count = 0;
        for (i = 0; i < attr_count; i++) {
            switch (attr_list[i].type) {
            case 128:
                fourcc = attr_list[i].value.value.i;
                pix_fmt = vaapi_pix_fmt_from_fourcc(fourcc);
                if (pix_fmt != AV_PIX_FMT_NONE) {
                    ++pix_fmt_count;
                } else {

                }
                break;
            case 129:
                constraints->min_width = attr_list[i].value.value.i;
                break;
            case 130:
                constraints->min_height = attr_list[i].value.value.i;
                break;
            case 131:
                constraints->max_width = attr_list[i].value.value.i;
                break;
            case 132:
                constraints->max_height = attr_list[i].value.value.i;
                break;
            }
        }
        if (pix_fmt_count == 0) {


            constraints->valid_sw_formats = ((void*)0);
        } else {
            constraints->valid_sw_formats = av_malloc_array(pix_fmt_count + 1,
                                                            sizeof(pix_fmt));
            if (!constraints->valid_sw_formats) {
                err = AVERROR(ENOMEM);
                goto fail;
            }

            for (i = j = 0; i < attr_count; i++) {
                if (attr_list[i].type != 128)
                    continue;
                fourcc = attr_list[i].value.value.i;
                pix_fmt = vaapi_pix_fmt_from_fourcc(fourcc);
                if (pix_fmt != AV_PIX_FMT_NONE)
                    constraints->valid_sw_formats[j++] = pix_fmt;
            }
            av_assert0(j == pix_fmt_count);
            constraints->valid_sw_formats[j] = AV_PIX_FMT_NONE;
        }
    } else {


        constraints->valid_sw_formats = av_malloc_array(ctx->nb_formats + 1,
                                                        sizeof(pix_fmt));
        if (!constraints->valid_sw_formats) {
            err = AVERROR(ENOMEM);
            goto fail;
        }
        for (i = 0; i < ctx->nb_formats; i++)
            constraints->valid_sw_formats[i] = ctx->formats[i].pix_fmt;
        constraints->valid_sw_formats[i] = AV_PIX_FMT_NONE;
    }

    constraints->valid_hw_formats = av_malloc_array(2, sizeof(pix_fmt));
    if (!constraints->valid_hw_formats) {
        err = AVERROR(ENOMEM);
        goto fail;
    }
    constraints->valid_hw_formats[0] = AV_PIX_FMT_VAAPI;
    constraints->valid_hw_formats[1] = AV_PIX_FMT_NONE;

    err = 0;
fail:
    av_freep(&attr_list);
    return err;
}
