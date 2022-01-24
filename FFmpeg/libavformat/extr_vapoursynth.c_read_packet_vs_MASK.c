#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_34__   TYPE_9__ ;
typedef  struct TYPE_33__   TYPE_8__ ;
typedef  struct TYPE_32__   TYPE_7__ ;
typedef  struct TYPE_31__   TYPE_6__ ;
typedef  struct TYPE_30__   TYPE_5__ ;
typedef  struct TYPE_29__   TYPE_4__ ;
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;
typedef  struct TYPE_25__   TYPE_13__ ;
typedef  struct TYPE_24__   TYPE_12__ ;
typedef  struct TYPE_23__   TYPE_11__ ;
typedef  struct TYPE_22__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vserr ;
typedef  int /*<<< orphan*/  uint8_t ;
struct vsframe_ref_data {void* vss_state; int /*<<< orphan*/  const* frame; TYPE_5__* vsapi; } ;
typedef  int ptrdiff_t ;
struct TYPE_32__ {scalar_t__ numFrames; TYPE_4__* format; } ;
typedef  TYPE_7__ VSVideoInfo ;
typedef  int /*<<< orphan*/  VSMap ;
typedef  int /*<<< orphan*/  VSFrameRef ;
struct TYPE_33__ {scalar_t__ current_frame; int* c_order; scalar_t__ is_cfr; TYPE_5__* vsapi; int /*<<< orphan*/ * vss_state; int /*<<< orphan*/  outnode; } ;
typedef  TYPE_8__ VSContext ;
struct TYPE_34__ {TYPE_2__* codecpar; } ;
struct TYPE_31__ {int size; void* data; } ;
struct TYPE_30__ {scalar_t__ (* getFrameWidth ) (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ;int (* getFrameHeight ) (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ;int (* getStride ) (int /*<<< orphan*/  const*,int) ;scalar_t__ (* getReadPtr ) (int /*<<< orphan*/  const*,int) ;int /*<<< orphan*/ * (* getFramePropsRO ) (int /*<<< orphan*/  const*) ;int /*<<< orphan*/ * (* getFrame ) (scalar_t__,int /*<<< orphan*/ ,char*,int) ;TYPE_7__* (* getVideoInfo ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_29__ {int numPlanes; } ;
struct TYPE_28__ {scalar_t__ den; scalar_t__ num; } ;
struct TYPE_27__ {scalar_t__ width; int height; int color_space; int /*<<< orphan*/  format; } ;
struct TYPE_26__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct TYPE_25__ {TYPE_9__** streams; TYPE_8__* priv_data; } ;
struct TYPE_24__ {scalar_t__ width; int height; int colorspace; int color_primaries; int color_trc; int* linesize; TYPE_6__** buf; void** data; int /*<<< orphan*/  format; TYPE_3__ sample_aspect_ratio; int /*<<< orphan*/  color_range; } ;
struct TYPE_23__ {scalar_t__ pts; int /*<<< orphan*/  flags; TYPE_1__* buf; int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct TYPE_22__ {int /*<<< orphan*/  log2_chroma_h; } ;
typedef  TYPE_9__ AVStream ;
typedef  TYPE_10__ AVPixFmtDescriptor ;
typedef  TYPE_11__ AVPacket ;
typedef  TYPE_12__ AVFrame ;
typedef  TYPE_13__ AVFormatContext ;
typedef  int /*<<< orphan*/  AVBufferRef ;

/* Variables and functions */
 int /*<<< orphan*/  AVCOL_RANGE_JPEG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int AVERROR_EXTERNAL ; 
 int /*<<< orphan*/  AV_BUFFER_FLAG_READONLY ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_PKT_FLAG_TRUSTED ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct vsframe_ref_data*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **) ; 
 TYPE_12__* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (TYPE_12__**) ; 
 int /*<<< orphan*/  FUNC8 (struct vsframe_ref_data*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_13__*,int /*<<< orphan*/ ,char*,char*) ; 
 struct vsframe_ref_data* FUNC10 (int) ; 
 TYPE_10__* FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  free_frame ; 
 int /*<<< orphan*/  free_vsframe_ref ; 
 scalar_t__ FUNC12 (TYPE_13__*,int /*<<< orphan*/  const*,char*,int) ; 
 TYPE_7__* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (scalar_t__,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/  const*,int) ; 
 int FUNC19 (int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC20(AVFormatContext *s, AVPacket *pkt)
{
    VSContext *vs = s->priv_data;
    AVStream *st = s->streams[0];
    AVFrame *frame = NULL;
    char vserr[80];
    const VSFrameRef *vsframe;
    const VSVideoInfo *info = vs->vsapi->getVideoInfo(vs->outnode);
    const VSMap *props;
    const AVPixFmtDescriptor *desc;
    AVBufferRef *vsframe_ref = NULL;
    struct vsframe_ref_data *ref_data;
    int err = 0;
    int i;

    if (vs->current_frame >= info->numFrames)
        return AVERROR_EOF;

    ref_data = FUNC10(sizeof(*ref_data));
    if (!ref_data) {
        err = FUNC0(ENOMEM);
        goto end;
    }

    // (the READONLY flag is important because the ref is reused for plane data)
    vsframe_ref = FUNC3(NULL, 0, free_vsframe_ref, ref_data, AV_BUFFER_FLAG_READONLY);
    if (!vsframe_ref) {
        err = FUNC0(ENOMEM);
        FUNC8(ref_data);
        goto end;
    }

    vsframe = vs->vsapi->getFrame(vs->current_frame, vs->outnode, vserr, sizeof(vserr));
    if (!vsframe) {
        FUNC9(s, AV_LOG_ERROR, "Error getting frame: %s\n", vserr);
        err = AVERROR_EXTERNAL;
        goto end;
    }

    ref_data->vsapi = vs->vsapi;
    ref_data->frame = vsframe;

    ref_data->vss_state = FUNC4(vs->vss_state);
    if (!ref_data->vss_state) {
        err = FUNC0(ENOMEM);
        goto end;
    }

    props = vs->vsapi->getFramePropsRO(vsframe);

    frame = FUNC6();
    if (!frame) {
        err = FUNC0(ENOMEM);
        goto end;
    }

    frame->format       = st->codecpar->format;
    frame->width        = st->codecpar->width;
    frame->height       = st->codecpar->height;
    frame->colorspace   = st->codecpar->color_space;

    // Values according to ISO/IEC 14496-10.
    frame->colorspace       = FUNC12(s, props, "_Matrix",      frame->colorspace);
    frame->color_primaries  = FUNC12(s, props, "_Primaries",   frame->color_primaries);
    frame->color_trc        = FUNC12(s, props, "_Transfer",    frame->color_trc);

    if (FUNC12(s, props, "_ColorRange", 1) == 0)
        frame->color_range = AVCOL_RANGE_JPEG;

    frame->sample_aspect_ratio.num = FUNC12(s, props, "_SARNum", 0);
    frame->sample_aspect_ratio.den = FUNC12(s, props, "_SARDen", 1);

    FUNC2(vs->vsapi->getFrameWidth(vsframe, 0) == frame->width);
    FUNC2(vs->vsapi->getFrameHeight(vsframe, 0) == frame->height);

    desc = FUNC11(frame->format);

    for (i = 0; i < info->format->numPlanes; i++) {
        int p = vs->c_order[i];
        ptrdiff_t plane_h = frame->height;

        frame->data[i] = (void *)vs->vsapi->getReadPtr(vsframe, p);
        frame->linesize[i] = vs->vsapi->getStride(vsframe, p);

        frame->buf[i] = FUNC4(vsframe_ref);
        if (!frame->buf[i]) {
            err = FUNC0(ENOMEM);
            goto end;
        }

        // Each plane needs an AVBufferRef that indicates the correct plane
        // memory range. VapourSynth doesn't even give us the memory range,
        // so make up a bad guess to make FFmpeg happy (even if almost nothing
        // checks the memory range).
        if (i == 1 || i == 2)
            plane_h = FUNC1(plane_h, desc->log2_chroma_h);
        frame->buf[i]->data = frame->data[i];
        frame->buf[i]->size = frame->linesize[i] * plane_h;
    }

    pkt->buf = FUNC3((uint8_t*)frame, sizeof(*frame),
                                free_frame, NULL, 0);
    if (!pkt->buf) {
        err = FUNC0(ENOMEM);
        goto end;
    }

    frame = NULL; // pkt owns it now

    pkt->data   = pkt->buf->data;
    pkt->size   = pkt->buf->size;
    pkt->flags |= AV_PKT_FLAG_TRUSTED;

    if (vs->is_cfr)
        pkt->pts = vs->current_frame;

    vs->current_frame++;

end:
    FUNC7(&frame);
    FUNC5(&vsframe_ref);
    return err;
}