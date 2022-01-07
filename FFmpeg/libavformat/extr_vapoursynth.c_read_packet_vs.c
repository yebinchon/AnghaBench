
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_34__ TYPE_9__ ;
typedef struct TYPE_33__ TYPE_8__ ;
typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;
typedef struct TYPE_25__ TYPE_13__ ;
typedef struct TYPE_24__ TYPE_12__ ;
typedef struct TYPE_23__ TYPE_11__ ;
typedef struct TYPE_22__ TYPE_10__ ;


typedef int vserr ;
typedef int uint8_t ;
struct vsframe_ref_data {void* vss_state; int const* frame; TYPE_5__* vsapi; } ;
typedef int ptrdiff_t ;
struct TYPE_32__ {scalar_t__ numFrames; TYPE_4__* format; } ;
typedef TYPE_7__ VSVideoInfo ;
typedef int VSMap ;
typedef int VSFrameRef ;
struct TYPE_33__ {scalar_t__ current_frame; int* c_order; scalar_t__ is_cfr; TYPE_5__* vsapi; int * vss_state; int outnode; } ;
typedef TYPE_8__ VSContext ;
struct TYPE_34__ {TYPE_2__* codecpar; } ;
struct TYPE_31__ {int size; void* data; } ;
struct TYPE_30__ {scalar_t__ (* getFrameWidth ) (int const*,int ) ;int (* getFrameHeight ) (int const*,int ) ;int (* getStride ) (int const*,int) ;scalar_t__ (* getReadPtr ) (int const*,int) ;int * (* getFramePropsRO ) (int const*) ;int * (* getFrame ) (scalar_t__,int ,char*,int) ;TYPE_7__* (* getVideoInfo ) (int ) ;} ;
struct TYPE_29__ {int numPlanes; } ;
struct TYPE_28__ {scalar_t__ den; scalar_t__ num; } ;
struct TYPE_27__ {scalar_t__ width; int height; int color_space; int format; } ;
struct TYPE_26__ {int size; int data; } ;
struct TYPE_25__ {TYPE_9__** streams; TYPE_8__* priv_data; } ;
struct TYPE_24__ {scalar_t__ width; int height; int colorspace; int color_primaries; int color_trc; int* linesize; TYPE_6__** buf; void** data; int format; TYPE_3__ sample_aspect_ratio; int color_range; } ;
struct TYPE_23__ {scalar_t__ pts; int flags; TYPE_1__* buf; int size; int data; } ;
struct TYPE_22__ {int log2_chroma_h; } ;
typedef TYPE_9__ AVStream ;
typedef TYPE_10__ AVPixFmtDescriptor ;
typedef TYPE_11__ AVPacket ;
typedef TYPE_12__ AVFrame ;
typedef TYPE_13__ AVFormatContext ;
typedef int AVBufferRef ;


 int AVCOL_RANGE_JPEG ;
 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int AVERROR_EXTERNAL ;
 int AV_BUFFER_FLAG_READONLY ;
 int AV_CEIL_RSHIFT (int,int ) ;
 int AV_LOG_ERROR ;
 int AV_PKT_FLAG_TRUSTED ;
 int ENOMEM ;
 int av_assert0 (int) ;
 void* av_buffer_create (int *,int,int ,struct vsframe_ref_data*,int ) ;
 void* av_buffer_ref (int *) ;
 int av_buffer_unref (int **) ;
 TYPE_12__* av_frame_alloc () ;
 int av_frame_free (TYPE_12__**) ;
 int av_free (struct vsframe_ref_data*) ;
 int av_log (TYPE_13__*,int ,char*,char*) ;
 struct vsframe_ref_data* av_mallocz (int) ;
 TYPE_10__* av_pix_fmt_desc_get (int ) ;
 int free_frame ;
 int free_vsframe_ref ;
 scalar_t__ get_vs_prop_int (TYPE_13__*,int const*,char*,int) ;
 TYPE_7__* stub1 (int ) ;
 int * stub2 (scalar_t__,int ,char*,int) ;
 int * stub3 (int const*) ;
 scalar_t__ stub4 (int const*,int ) ;
 int stub5 (int const*,int ) ;
 scalar_t__ stub6 (int const*,int) ;
 int stub7 (int const*,int) ;

__attribute__((used)) static int read_packet_vs(AVFormatContext *s, AVPacket *pkt)
{
    VSContext *vs = s->priv_data;
    AVStream *st = s->streams[0];
    AVFrame *frame = ((void*)0);
    char vserr[80];
    const VSFrameRef *vsframe;
    const VSVideoInfo *info = vs->vsapi->getVideoInfo(vs->outnode);
    const VSMap *props;
    const AVPixFmtDescriptor *desc;
    AVBufferRef *vsframe_ref = ((void*)0);
    struct vsframe_ref_data *ref_data;
    int err = 0;
    int i;

    if (vs->current_frame >= info->numFrames)
        return AVERROR_EOF;

    ref_data = av_mallocz(sizeof(*ref_data));
    if (!ref_data) {
        err = AVERROR(ENOMEM);
        goto end;
    }


    vsframe_ref = av_buffer_create(((void*)0), 0, free_vsframe_ref, ref_data, AV_BUFFER_FLAG_READONLY);
    if (!vsframe_ref) {
        err = AVERROR(ENOMEM);
        av_free(ref_data);
        goto end;
    }

    vsframe = vs->vsapi->getFrame(vs->current_frame, vs->outnode, vserr, sizeof(vserr));
    if (!vsframe) {
        av_log(s, AV_LOG_ERROR, "Error getting frame: %s\n", vserr);
        err = AVERROR_EXTERNAL;
        goto end;
    }

    ref_data->vsapi = vs->vsapi;
    ref_data->frame = vsframe;

    ref_data->vss_state = av_buffer_ref(vs->vss_state);
    if (!ref_data->vss_state) {
        err = AVERROR(ENOMEM);
        goto end;
    }

    props = vs->vsapi->getFramePropsRO(vsframe);

    frame = av_frame_alloc();
    if (!frame) {
        err = AVERROR(ENOMEM);
        goto end;
    }

    frame->format = st->codecpar->format;
    frame->width = st->codecpar->width;
    frame->height = st->codecpar->height;
    frame->colorspace = st->codecpar->color_space;


    frame->colorspace = get_vs_prop_int(s, props, "_Matrix", frame->colorspace);
    frame->color_primaries = get_vs_prop_int(s, props, "_Primaries", frame->color_primaries);
    frame->color_trc = get_vs_prop_int(s, props, "_Transfer", frame->color_trc);

    if (get_vs_prop_int(s, props, "_ColorRange", 1) == 0)
        frame->color_range = AVCOL_RANGE_JPEG;

    frame->sample_aspect_ratio.num = get_vs_prop_int(s, props, "_SARNum", 0);
    frame->sample_aspect_ratio.den = get_vs_prop_int(s, props, "_SARDen", 1);

    av_assert0(vs->vsapi->getFrameWidth(vsframe, 0) == frame->width);
    av_assert0(vs->vsapi->getFrameHeight(vsframe, 0) == frame->height);

    desc = av_pix_fmt_desc_get(frame->format);

    for (i = 0; i < info->format->numPlanes; i++) {
        int p = vs->c_order[i];
        ptrdiff_t plane_h = frame->height;

        frame->data[i] = (void *)vs->vsapi->getReadPtr(vsframe, p);
        frame->linesize[i] = vs->vsapi->getStride(vsframe, p);

        frame->buf[i] = av_buffer_ref(vsframe_ref);
        if (!frame->buf[i]) {
            err = AVERROR(ENOMEM);
            goto end;
        }





        if (i == 1 || i == 2)
            plane_h = AV_CEIL_RSHIFT(plane_h, desc->log2_chroma_h);
        frame->buf[i]->data = frame->data[i];
        frame->buf[i]->size = frame->linesize[i] * plane_h;
    }

    pkt->buf = av_buffer_create((uint8_t*)frame, sizeof(*frame),
                                free_frame, ((void*)0), 0);
    if (!pkt->buf) {
        err = AVERROR(ENOMEM);
        goto end;
    }

    frame = ((void*)0);

    pkt->data = pkt->buf->data;
    pkt->size = pkt->buf->size;
    pkt->flags |= AV_PKT_FLAG_TRUSTED;

    if (vs->is_cfr)
        pkt->pts = vs->current_frame;

    vs->current_frame++;

end:
    av_frame_free(&frame);
    av_buffer_unref(&vsframe_ref);
    return err;
}
