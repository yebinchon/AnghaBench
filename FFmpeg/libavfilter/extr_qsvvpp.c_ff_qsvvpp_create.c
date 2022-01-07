
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_15__ ;


typedef int mfxExtBuffer ;
struct TYPE_22__ {int CropH; int CropW; int CropY; int CropX; } ;
struct TYPE_21__ {int nb_inputs; int * outputs; int * inputs; } ;
struct TYPE_17__ {TYPE_8__ Out; TYPE_8__ In; } ;
struct TYPE_16__ {int NumExtParam; int AsyncDepth; int IOPattern; int ** ExtParam; TYPE_1__ vpp; } ;
struct TYPE_20__ {int nb_ext_buffers; TYPE_15__ vpp_param; int session; int out_mem_mode; int in_mem_mode; int ** ext_buffers; int opaque_alloc; TYPE_8__* frame_infos; int out_sw_format; scalar_t__ filter_frame; } ;
struct TYPE_19__ {size_t in_idx; int h; int w; int y; int x; } ;
struct TYPE_18__ {int num_crop; int num_ext_buf; int ** ext_buf; TYPE_3__* crop; int out_sw_format; scalar_t__ filter_frame; } ;
typedef TYPE_2__ QSVVPPParam ;
typedef TYPE_3__ QSVVPPCrop ;
typedef TYPE_4__ QSVVPPContext ;
typedef TYPE_5__ AVFilterContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int ENOMEM ;
 scalar_t__ IS_OPAQUE_MEMORY (int ) ;
 scalar_t__ IS_SYSTEM_MEMORY (int ) ;
 scalar_t__ IS_VIDEO_MEMORY (int ) ;
 int MFXVideoVPP_Init (int ,TYPE_15__*) ;
 int MFX_IOPATTERN_IN_OPAQUE_MEMORY ;
 int MFX_IOPATTERN_IN_SYSTEM_MEMORY ;
 int MFX_IOPATTERN_IN_VIDEO_MEMORY ;
 int MFX_IOPATTERN_OUT_OPAQUE_MEMORY ;
 int MFX_IOPATTERN_OUT_SYSTEM_MEMORY ;
 int MFX_IOPATTERN_OUT_VIDEO_MEMORY ;
 int av_log (TYPE_5__*,int ,char*,...) ;
 TYPE_4__* av_mallocz (int) ;
 void* av_mallocz_array (int,int) ;
 scalar_t__ ff_filter_frame ;
 int ff_qsvvpp_free (TYPE_4__**) ;
 int fill_frameinfo_by_link (TYPE_8__*,int ) ;
 int init_vpp_session (TYPE_5__*,TYPE_4__*) ;

int ff_qsvvpp_create(AVFilterContext *avctx, QSVVPPContext **vpp, QSVVPPParam *param)
{
    int i;
    int ret;
    QSVVPPContext *s;

    s = av_mallocz(sizeof(*s));
    if (!s)
        return AVERROR(ENOMEM);

    s->filter_frame = param->filter_frame;
    if (!s->filter_frame)
        s->filter_frame = ff_filter_frame;
    s->out_sw_format = param->out_sw_format;


    ret = init_vpp_session(avctx, s);
    if (ret < 0)
        goto failed;

    s->frame_infos = av_mallocz_array(avctx->nb_inputs, sizeof(*s->frame_infos));
    if (!s->frame_infos) {
        ret = AVERROR(ENOMEM);
        goto failed;
    }


    for (i = 0; i < avctx->nb_inputs; i++) {
        ret = fill_frameinfo_by_link(&s->frame_infos[i], avctx->inputs[i]);
        if (ret < 0)
            goto failed;
    }


    for (i = 0; i < param->num_crop; i++) {
        QSVVPPCrop *crop = param->crop + i;
        if (crop->in_idx > avctx->nb_inputs) {
            ret = AVERROR(EINVAL);
            goto failed;
        }
        s->frame_infos[crop->in_idx].CropX = crop->x;
        s->frame_infos[crop->in_idx].CropY = crop->y;
        s->frame_infos[crop->in_idx].CropW = crop->w;
        s->frame_infos[crop->in_idx].CropH = crop->h;
    }

    s->vpp_param.vpp.In = s->frame_infos[0];

    ret = fill_frameinfo_by_link(&s->vpp_param.vpp.Out, avctx->outputs[0]);
    if (ret < 0) {
        av_log(avctx, AV_LOG_ERROR, "Fail to get frame info from link.\n");
        goto failed;
    }

    if (IS_OPAQUE_MEMORY(s->in_mem_mode) || IS_OPAQUE_MEMORY(s->out_mem_mode)) {
        s->nb_ext_buffers = param->num_ext_buf + 1;
        s->ext_buffers = av_mallocz_array(s->nb_ext_buffers, sizeof(*s->ext_buffers));
        if (!s->ext_buffers) {
            ret = AVERROR(ENOMEM);
            goto failed;
        }

        s->ext_buffers[0] = (mfxExtBuffer *)&s->opaque_alloc;
        for (i = 1; i < param->num_ext_buf; i++)
            s->ext_buffers[i] = param->ext_buf[i - 1];
        s->vpp_param.ExtParam = s->ext_buffers;
        s->vpp_param.NumExtParam = s->nb_ext_buffers;
    } else {
        s->vpp_param.NumExtParam = param->num_ext_buf;
        s->vpp_param.ExtParam = param->ext_buf;
    }

    s->vpp_param.AsyncDepth = 1;

    if (IS_SYSTEM_MEMORY(s->in_mem_mode))
        s->vpp_param.IOPattern |= MFX_IOPATTERN_IN_SYSTEM_MEMORY;
    else if (IS_VIDEO_MEMORY(s->in_mem_mode))
        s->vpp_param.IOPattern |= MFX_IOPATTERN_IN_VIDEO_MEMORY;
    else if (IS_OPAQUE_MEMORY(s->in_mem_mode))
        s->vpp_param.IOPattern |= MFX_IOPATTERN_IN_OPAQUE_MEMORY;

    if (IS_SYSTEM_MEMORY(s->out_mem_mode))
        s->vpp_param.IOPattern |= MFX_IOPATTERN_OUT_SYSTEM_MEMORY;
    else if (IS_VIDEO_MEMORY(s->out_mem_mode))
        s->vpp_param.IOPattern |= MFX_IOPATTERN_OUT_VIDEO_MEMORY;
    else if (IS_OPAQUE_MEMORY(s->out_mem_mode))
        s->vpp_param.IOPattern |= MFX_IOPATTERN_OUT_OPAQUE_MEMORY;

    ret = MFXVideoVPP_Init(s->session, &s->vpp_param);
    if (ret < 0) {
        av_log(avctx, AV_LOG_ERROR, "Failed to create a qsvvpp, ret = %d.\n", ret);
        goto failed;
    }

    *vpp = s;
    return 0;

failed:
    ff_qsvvpp_free(&s);

    return ret;
}
