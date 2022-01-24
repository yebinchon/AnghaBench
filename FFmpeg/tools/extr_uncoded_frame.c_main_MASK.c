#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_36__   TYPE_9__ ;
typedef  struct TYPE_35__   TYPE_6__ ;
typedef  struct TYPE_34__   TYPE_5__ ;
typedef  struct TYPE_33__   TYPE_4__ ;
typedef  struct TYPE_32__   TYPE_3__ ;
typedef  struct TYPE_31__   TYPE_2__ ;
typedef  struct TYPE_30__   TYPE_1__ ;
typedef  struct TYPE_29__   TYPE_10__ ;

/* Type definitions */
struct TYPE_36__ {scalar_t__ pb; int /*<<< orphan*/  url; TYPE_1__* oformat; } ;
struct TYPE_35__ {int nb_inputs; int nb_outputs; int /*<<< orphan*/ * outputs; int /*<<< orphan*/ * inputs; } ;
struct TYPE_34__ {int nb_filters; TYPE_6__** filters; } ;
struct TYPE_33__ {scalar_t__ pts; } ;
struct TYPE_32__ {TYPE_9__* mux; TYPE_10__* stream; int /*<<< orphan*/  sink; } ;
struct TYPE_31__ {int codec_type; void* format; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  sample_rate; int /*<<< orphan*/  channels; int /*<<< orphan*/  channel_layout; int /*<<< orphan*/  sample_aspect_ratio; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_30__ {int flags; } ;
struct TYPE_29__ {int /*<<< orphan*/  index; int /*<<< orphan*/  time_base; TYPE_2__* codecpar; int /*<<< orphan*/  r_frame_rate; int /*<<< orphan*/  avg_frame_rate; } ;
typedef  TYPE_3__ Stream ;
typedef  TYPE_4__ AVFrame ;
typedef  TYPE_5__ AVFilterGraph ;
typedef  TYPE_6__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int AVFMT_NOFILE ; 
 int /*<<< orphan*/  AVIO_FLAG_WRITE ; 
#define  AVMEDIA_TYPE_AUDIO 129 
#define  AVMEDIA_TYPE_VIDEO 128 
 int /*<<< orphan*/  AV_BUFFERSINK_FLAG_NO_REQUEST ; 
 int /*<<< orphan*/  AV_CODEC_ID_RAWVIDEO ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 scalar_t__ AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC13 (int,int) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 TYPE_4__* FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__**) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC18 (void*,int) ; 
 int FUNC19 (TYPE_9__*,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_9__*,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC21 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (TYPE_9__*) ; 
 int FUNC23 (TYPE_9__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 () ; 
 TYPE_5__* FUNC25 () ; 
 int FUNC26 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (TYPE_5__**) ; 
 int FUNC28 (TYPE_5__*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC29 (TYPE_5__*) ; 
 int FUNC30 (TYPE_9__**,int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC31 (TYPE_9__*) ; 
 TYPE_10__* FUNC32 (TYPE_9__*,int /*<<< orphan*/ *) ; 
 int FUNC33 (TYPE_9__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC34 (scalar_t__*) ; 
 int FUNC35 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC36 (int /*<<< orphan*/ ,TYPE_5__*,TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC37 (int) ; 
 char* FUNC38 (char*,char) ; 

int FUNC39(int argc, char **argv)
{
    char *in_graph_desc, **out_dev_name;
    int nb_out_dev = 0, nb_streams = 0;
    AVFilterGraph *in_graph = NULL;
    Stream *streams = NULL, *st;
    AVFrame *frame = NULL;
    int i, j, run = 1, ret;

    //av_log_set_level(AV_LOG_DEBUG);

    if (argc < 3) {
        FUNC20(NULL, AV_LOG_ERROR,
               "Usage: %s filter_graph dev:out [dev2:out2...]\n\n"
               "Examples:\n"
               "%s movie=file.nut:s=v+a xv:- alsa:default\n"
               "%s movie=file.nut:s=v+a uncodedframecrc:pipe:0\n",
               argv[0], argv[0], argv[0]);
        FUNC37(1);
    }
    in_graph_desc = argv[1];
    out_dev_name = argv + 2;
    nb_out_dev = argc - 2;

    FUNC24();

    /* Create input graph */
    if (!(in_graph = FUNC25())) {
        ret = FUNC0(ENOMEM);
        FUNC20(NULL, AV_LOG_ERROR, "Unable to alloc graph graph: %s\n",
               FUNC14(ret));
        goto fail;
    }
    ret = FUNC28(in_graph, in_graph_desc, NULL, NULL, NULL);
    if (ret < 0) {
        FUNC20(NULL, AV_LOG_ERROR, "Unable to parse graph: %s\n",
               FUNC14(ret));
        goto fail;
    }
    nb_streams = 0;
    for (i = 0; i < in_graph->nb_filters; i++) {
        AVFilterContext *f = in_graph->filters[i];
        for (j = 0; j < f->nb_inputs; j++) {
            if (!f->inputs[j]) {
                FUNC20(NULL, AV_LOG_ERROR, "Graph has unconnected inputs\n");
                ret = FUNC0(EINVAL);
                goto fail;
            }
        }
        for (j = 0; j < f->nb_outputs; j++)
            if (!f->outputs[j])
                nb_streams++;
    }
    if (!nb_streams) {
        FUNC20(NULL, AV_LOG_ERROR, "Graph has no output stream\n");
        ret = FUNC0(EINVAL);
        goto fail;
    }
    if (nb_out_dev != 1 && nb_out_dev != nb_streams) {
        FUNC20(NULL, AV_LOG_ERROR,
               "Graph has %d output streams, %d devices given\n",
               nb_streams, nb_out_dev);
        ret = FUNC0(EINVAL);
        goto fail;
    }

    if (!(streams = FUNC13(nb_streams, sizeof(*streams)))) {
        ret = FUNC0(ENOMEM);
        FUNC20(NULL, AV_LOG_ERROR, "Could not allocate streams\n");
    }
    st = streams;
    for (i = 0; i < in_graph->nb_filters; i++) {
        AVFilterContext *f = in_graph->filters[i];
        for (j = 0; j < f->nb_outputs; j++) {
            if (!f->outputs[j]) {
                if ((ret = FUNC36(st++, in_graph, f, j)) < 0)
                    goto fail;
            }
        }
    }
    FUNC1(st - streams == nb_streams);
    if ((ret = FUNC26(in_graph, NULL)) < 0) {
        FUNC20(NULL, AV_LOG_ERROR, "Failed to configure graph\n");
        goto fail;
    }

    /* Create output devices */
    for (i = 0; i < nb_out_dev; i++) {
        char *fmt = NULL, *dev = out_dev_name[i];
        st = &streams[i];
        if ((dev = FUNC38(dev, ':'))) {
            *(dev++) = 0;
            fmt = out_dev_name[i];
        }
        ret = FUNC30(&st->mux, NULL, fmt, dev);
        if (ret < 0) {
            FUNC20(NULL, AV_LOG_ERROR, "Failed to allocate output: %s\n",
                   FUNC14(ret));
            goto fail;
        }
        if (!(st->mux->oformat->flags & AVFMT_NOFILE)) {
            ret = FUNC35(&st->mux->pb, st->mux->url, AVIO_FLAG_WRITE,
                             NULL, NULL);
            if (ret < 0) {
                FUNC20(st->mux, AV_LOG_ERROR, "Failed to init output: %s\n",
                       FUNC14(ret));
                goto fail;
            }
        }
    }
    for (; i < nb_streams; i++)
        streams[i].mux = streams[0].mux;

    /* Create output device streams */
    for (i = 0; i < nb_streams; i++) {
        st = &streams[i];
        if (!(st->stream = FUNC32(st->mux, NULL))) {
            ret = FUNC0(ENOMEM);
            FUNC20(NULL, AV_LOG_ERROR, "Failed to create output stream\n");
            goto fail;
        }
        st->stream->codecpar->codec_type = FUNC11(st->sink);
        st->stream->time_base = FUNC10(st->sink);
        switch (FUNC11(st->sink)) {
        case AVMEDIA_TYPE_VIDEO:
            st->stream->codecpar->codec_id = AV_CODEC_ID_RAWVIDEO;
            st->stream->avg_frame_rate =
            st->stream->  r_frame_rate = FUNC6(st->sink);
            st->stream->codecpar->width               = FUNC12(st->sink);
            st->stream->codecpar->height              = FUNC7(st->sink);
            st->stream->codecpar->sample_aspect_ratio = FUNC8(st->sink);
            st->stream->codecpar->format              = FUNC4(st->sink);
            break;
        case AVMEDIA_TYPE_AUDIO:
            st->stream->codecpar->channel_layout = FUNC2(st->sink);
            st->stream->codecpar->channels       = FUNC3(st->sink);
            st->stream->codecpar->sample_rate    = FUNC9(st->sink);
            st->stream->codecpar->format         = FUNC4(st->sink);
            st->stream->codecpar->codec_id       = FUNC18(st->stream->codecpar->format, -1);
            break;
        default:
            FUNC1(!"reached");
        }
    }

    /* Init output devices */
    for (i = 0; i < nb_out_dev; i++) {
        st = &streams[i];
        if ((ret = FUNC33(st->mux, NULL)) < 0) {
            FUNC20(st->mux, AV_LOG_ERROR, "Failed to init output: %s\n",
                   FUNC14(ret));
            goto fail;
        }
    }

    /* Check output devices */
    for (i = 0; i < nb_streams; i++) {
        st = &streams[i];
        ret = FUNC23(st->mux, st->stream->index);
        if (ret < 0) {
            FUNC20(st->mux, AV_LOG_ERROR,
                   "Uncoded frames not supported on stream #%d: %s\n",
                   i, FUNC14(ret));
            goto fail;
        }
    }

    while (run) {
        ret = FUNC29(in_graph);
        if (ret < 0) {
            if (ret == AVERROR_EOF) {
                run = 0;
            } else {
                FUNC20(NULL, AV_LOG_ERROR, "Error filtering: %s\n",
                       FUNC14(ret));
                break;
            }
        }
        for (i = 0; i < nb_streams; i++) {
            st = &streams[i];
            while (1) {
                if (!frame && !(frame = FUNC15())) {
                    ret = FUNC0(ENOMEM);
                    FUNC20(NULL, AV_LOG_ERROR, "Could not allocate frame\n");
                    goto fail;
                }
                ret = FUNC5(st->sink, frame,
                                                    AV_BUFFERSINK_FLAG_NO_REQUEST);
                if (ret < 0) {
                    if (ret != FUNC0(EAGAIN) && ret != AVERROR_EOF)
                        FUNC20(NULL, AV_LOG_WARNING, "Error in sink: %s\n",
                               FUNC14(ret));
                    break;
                }
                if (frame->pts != AV_NOPTS_VALUE)
                    frame->pts = FUNC21(frame->pts,
                                              FUNC10(st->sink),
                                              st->stream->time_base);
                ret = FUNC19(st->mux,
                                                         st->stream->index,
                                                         frame);
                frame = NULL;
                if (ret < 0) {
                    FUNC20(st->mux, AV_LOG_ERROR,
                           "Error writing frame: %s\n", FUNC14(ret));
                    goto fail;
                }
            }
        }
    }
    ret = 0;

    for (i = 0; i < nb_out_dev; i++) {
        st = &streams[i];
        FUNC22(st->mux);
    }

fail:
    FUNC16(&frame);
    FUNC27(&in_graph);
    if (streams) {
        for (i = 0; i < nb_out_dev; i++) {
            st = &streams[i];
            if (st->mux) {
                if (st->mux->pb)
                    FUNC34(&st->mux->pb);
                FUNC31(st->mux);
            }
        }
    }
    FUNC17(&streams);
    return ret < 0;
}