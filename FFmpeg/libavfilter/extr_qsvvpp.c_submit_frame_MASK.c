#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_31__   TYPE_7__ ;
typedef  struct TYPE_30__   TYPE_6__ ;
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;
typedef  struct TYPE_24__   TYPE_12__ ;

/* Type definitions */
struct TYPE_26__ {int /*<<< orphan*/  PicStruct; } ;
struct TYPE_25__ {int /*<<< orphan*/  TimeStamp; } ;
struct TYPE_27__ {TYPE_2__ Info; TYPE_1__ Data; } ;
typedef  TYPE_3__ mfxFrameSurface1 ;
struct TYPE_31__ {int /*<<< orphan*/  time_base; int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/ * dst; } ;
struct TYPE_30__ {scalar_t__ format; int height; int* linesize; int /*<<< orphan*/  width; } ;
struct TYPE_29__ {TYPE_3__* surface; TYPE_12__* frame; TYPE_3__ surface_internal; } ;
struct TYPE_28__ {TYPE_2__* frame_infos; int /*<<< orphan*/  in_mem_mode; int /*<<< orphan*/  in_frame_list; } ;
struct TYPE_24__ {int height; int repeat_pict; scalar_t__ top_field_first; int /*<<< orphan*/  interlaced_frame; int /*<<< orphan*/  pts; int /*<<< orphan*/  width; scalar_t__* data; } ;
typedef  TYPE_4__ QSVVPPContext ;
typedef  TYPE_5__ QSVFrame ;
typedef  TYPE_6__ AVFrame ;
typedef  TYPE_7__ AVFilterLink ;
typedef  int /*<<< orphan*/  AVFilterContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ AV_PIX_FMT_QSV ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 size_t FUNC1 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MFX_PICSTRUCT_FIELD_BFF ; 
 int /*<<< orphan*/  MFX_PICSTRUCT_FIELD_REPEATED ; 
 int /*<<< orphan*/  MFX_PICSTRUCT_FIELD_TFF ; 
 int /*<<< orphan*/  MFX_PICSTRUCT_FRAME_DOUBLING ; 
 int /*<<< orphan*/  MFX_PICSTRUCT_FRAME_TRIPLING ; 
 int /*<<< orphan*/  MFX_PICSTRUCT_PROGRESSIVE ; 
 void* FUNC3 (TYPE_6__*) ; 
 scalar_t__ FUNC4 (TYPE_12__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_12__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_12__**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  default_tb ; 
 TYPE_12__* FUNC10 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (TYPE_12__*,TYPE_3__*) ; 

__attribute__((used)) static QSVFrame *FUNC13(QSVVPPContext *s, AVFilterLink *inlink, AVFrame *picref)
{
    QSVFrame        *qsv_frame;
    AVFilterContext *ctx = inlink->dst;

    FUNC9(s->in_frame_list);

    qsv_frame = FUNC11(&s->in_frame_list);
    if (!qsv_frame)
        return NULL;

    /* Turn AVFrame into mfxFrameSurface1.
     * For video/opaque memory mode, pix_fmt is AV_PIX_FMT_QSV, and
     * mfxFrameSurface1 is stored in AVFrame->data[3];
     * for system memory mode, raw video data is stored in
     * AVFrame, we should map it into mfxFrameSurface1.
     */
    if (!FUNC2(s->in_mem_mode)) {
        if (picref->format != AV_PIX_FMT_QSV) {
            FUNC7(ctx, AV_LOG_ERROR, "QSVVPP gets a wrong frame.\n");
            return NULL;
        }
        qsv_frame->frame   = FUNC3(picref);
        qsv_frame->surface = (mfxFrameSurface1 *)qsv_frame->frame->data[3];
    } else {
        /* make a copy if the input is not padded as libmfx requires */
        if (picref->height & 31 || picref->linesize[0] & 31) {
            qsv_frame->frame = FUNC10(inlink,
                                                   FUNC0(inlink->w, 32),
                                                   FUNC0(inlink->h, 32));
            if (!qsv_frame->frame)
                return NULL;

            qsv_frame->frame->width   = picref->width;
            qsv_frame->frame->height  = picref->height;

            if (FUNC4(qsv_frame->frame, picref) < 0) {
                FUNC6(&qsv_frame->frame);
                return NULL;
            }

            FUNC5(qsv_frame->frame, picref);
        } else
            qsv_frame->frame = FUNC3(picref);

        if (FUNC12(qsv_frame->frame,
                                &qsv_frame->surface_internal) < 0) {
            FUNC7(ctx, AV_LOG_ERROR, "Unsupported frame.\n");
            return NULL;
        }
        qsv_frame->surface = &qsv_frame->surface_internal;
    }

    qsv_frame->surface->Info           = s->frame_infos[FUNC1(inlink)];
    qsv_frame->surface->Data.TimeStamp = FUNC8(qsv_frame->frame->pts,
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