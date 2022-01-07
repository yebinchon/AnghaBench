
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;
typedef struct TYPE_24__ TYPE_12__ ;


struct TYPE_26__ {int PicStruct; } ;
struct TYPE_25__ {int TimeStamp; } ;
struct TYPE_27__ {TYPE_2__ Info; TYPE_1__ Data; } ;
typedef TYPE_3__ mfxFrameSurface1 ;
struct TYPE_31__ {int time_base; int h; int w; int * dst; } ;
struct TYPE_30__ {scalar_t__ format; int height; int* linesize; int width; } ;
struct TYPE_29__ {TYPE_3__* surface; TYPE_12__* frame; TYPE_3__ surface_internal; } ;
struct TYPE_28__ {TYPE_2__* frame_infos; int in_mem_mode; int in_frame_list; } ;
struct TYPE_24__ {int height; int repeat_pict; scalar_t__ top_field_first; int interlaced_frame; int pts; int width; scalar_t__* data; } ;
typedef TYPE_4__ QSVVPPContext ;
typedef TYPE_5__ QSVFrame ;
typedef TYPE_6__ AVFrame ;
typedef TYPE_7__ AVFilterLink ;
typedef int AVFilterContext ;


 int AV_LOG_ERROR ;
 scalar_t__ AV_PIX_FMT_QSV ;
 int FFALIGN (int ,int) ;
 size_t FF_INLINK_IDX (TYPE_7__*) ;
 int IS_SYSTEM_MEMORY (int ) ;
 int MFX_PICSTRUCT_FIELD_BFF ;
 int MFX_PICSTRUCT_FIELD_REPEATED ;
 int MFX_PICSTRUCT_FIELD_TFF ;
 int MFX_PICSTRUCT_FRAME_DOUBLING ;
 int MFX_PICSTRUCT_FRAME_TRIPLING ;
 int MFX_PICSTRUCT_PROGRESSIVE ;
 void* av_frame_clone (TYPE_6__*) ;
 scalar_t__ av_frame_copy (TYPE_12__*,TYPE_6__*) ;
 int av_frame_copy_props (TYPE_12__*,TYPE_6__*) ;
 int av_frame_free (TYPE_12__**) ;
 int av_log (int *,int ,char*) ;
 int av_rescale_q (int ,int ,int ) ;
 int clear_unused_frames (int ) ;
 int default_tb ;
 TYPE_12__* ff_get_video_buffer (TYPE_7__*,int ,int ) ;
 TYPE_5__* get_free_frame (int *) ;
 scalar_t__ map_frame_to_surface (TYPE_12__*,TYPE_3__*) ;

__attribute__((used)) static QSVFrame *submit_frame(QSVVPPContext *s, AVFilterLink *inlink, AVFrame *picref)
{
    QSVFrame *qsv_frame;
    AVFilterContext *ctx = inlink->dst;

    clear_unused_frames(s->in_frame_list);

    qsv_frame = get_free_frame(&s->in_frame_list);
    if (!qsv_frame)
        return ((void*)0);







    if (!IS_SYSTEM_MEMORY(s->in_mem_mode)) {
        if (picref->format != AV_PIX_FMT_QSV) {
            av_log(ctx, AV_LOG_ERROR, "QSVVPP gets a wrong frame.\n");
            return ((void*)0);
        }
        qsv_frame->frame = av_frame_clone(picref);
        qsv_frame->surface = (mfxFrameSurface1 *)qsv_frame->frame->data[3];
    } else {

        if (picref->height & 31 || picref->linesize[0] & 31) {
            qsv_frame->frame = ff_get_video_buffer(inlink,
                                                   FFALIGN(inlink->w, 32),
                                                   FFALIGN(inlink->h, 32));
            if (!qsv_frame->frame)
                return ((void*)0);

            qsv_frame->frame->width = picref->width;
            qsv_frame->frame->height = picref->height;

            if (av_frame_copy(qsv_frame->frame, picref) < 0) {
                av_frame_free(&qsv_frame->frame);
                return ((void*)0);
            }

            av_frame_copy_props(qsv_frame->frame, picref);
        } else
            qsv_frame->frame = av_frame_clone(picref);

        if (map_frame_to_surface(qsv_frame->frame,
                                &qsv_frame->surface_internal) < 0) {
            av_log(ctx, AV_LOG_ERROR, "Unsupported frame.\n");
            return ((void*)0);
        }
        qsv_frame->surface = &qsv_frame->surface_internal;
    }

    qsv_frame->surface->Info = s->frame_infos[FF_INLINK_IDX(inlink)];
    qsv_frame->surface->Data.TimeStamp = av_rescale_q(qsv_frame->frame->pts,
                                                      inlink->time_base, default_tb);

    qsv_frame->surface->Info.PicStruct =
            !qsv_frame->frame->interlaced_frame ? MFX_PICSTRUCT_PROGRESSIVE :
            (qsv_frame->frame->top_field_first ? MFX_PICSTRUCT_FIELD_TFF :
                                                 MFX_PICSTRUCT_FIELD_BFF);
    if (qsv_frame->frame->repeat_pict == 1)
        qsv_frame->surface->Info.PicStruct |= MFX_PICSTRUCT_FIELD_REPEATED;
    else if (qsv_frame->frame->repeat_pict == 2)
        qsv_frame->surface->Info.PicStruct |= MFX_PICSTRUCT_FRAME_DOUBLING;
    else if (qsv_frame->frame->repeat_pict == 4)
        qsv_frame->surface->Info.PicStruct |= MFX_PICSTRUCT_FRAME_TRIPLING;

    return qsv_frame;
}
