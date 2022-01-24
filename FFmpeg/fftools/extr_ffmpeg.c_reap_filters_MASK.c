#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_35__   TYPE_9__ ;
typedef  struct TYPE_34__   TYPE_8__ ;
typedef  struct TYPE_33__   TYPE_7__ ;
typedef  struct TYPE_32__   TYPE_6__ ;
typedef  struct TYPE_31__   TYPE_5__ ;
typedef  struct TYPE_30__   TYPE_4__ ;
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_1__ ;

/* Type definitions */
typedef  double int64_t ;
typedef  int /*<<< orphan*/  error ;
struct TYPE_33__ {int den; int /*<<< orphan*/  num; } ;
struct TYPE_35__ {int /*<<< orphan*/  channels; TYPE_4__* codec; TYPE_7__ time_base; int /*<<< orphan*/  sample_aspect_ratio; } ;
struct TYPE_34__ {double pts; int /*<<< orphan*/  channels; int /*<<< orphan*/  sample_aspect_ratio; } ;
struct TYPE_32__ {double start_time; } ;
struct TYPE_29__ {int /*<<< orphan*/  num; } ;
struct TYPE_31__ {size_t file_index; TYPE_3__ frame_aspect_ratio; scalar_t__ finished; TYPE_8__* filtered_frame; int /*<<< orphan*/  index; int /*<<< orphan*/  initialized; TYPE_2__* filter; TYPE_9__* enc_ctx; } ;
struct TYPE_30__ {int capabilities; } ;
struct TYPE_28__ {int /*<<< orphan*/ * filter; TYPE_1__* graph; } ;
struct TYPE_27__ {int /*<<< orphan*/  graph; } ;
typedef  TYPE_5__ OutputStream ;
typedef  TYPE_6__ OutputFile ;
typedef  TYPE_7__ AVRational ;
typedef  TYPE_8__ AVFrame ;
typedef  int /*<<< orphan*/  AVFilterContext ;
typedef  TYPE_9__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
#define  AVMEDIA_TYPE_AUDIO 129 
#define  AVMEDIA_TYPE_VIDEO 128 
 int /*<<< orphan*/  AV_BUFFERSINK_FLAG_NO_REQUEST ; 
 int AV_CODEC_CAP_PARAM_CHANGE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 double AV_NOPTS_VALUE ; 
 TYPE_7__ AV_TIME_BASE_Q ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  ENOMEM ; 
 double FUNC1 (double) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,TYPE_8__*,int /*<<< orphan*/ ) ; 
 TYPE_7__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 TYPE_8__* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC11 (int) ; 
 void* FUNC12 (double,TYPE_7__,TYPE_7__) ; 
 int /*<<< orphan*/  FUNC13 (double) ; 
 int /*<<< orphan*/  FUNC14 (double,TYPE_7__*) ; 
 int /*<<< orphan*/  debug_ts ; 
 int /*<<< orphan*/  FUNC15 (TYPE_6__*,TYPE_5__*,TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_6__*,TYPE_5__*,TYPE_8__*,double) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 
 int FUNC18 (TYPE_5__*,char*,int) ; 
 int nb_output_streams ; 
 TYPE_6__** output_files ; 
 TYPE_5__** output_streams ; 

__attribute__((used)) static int FUNC19(int flush)
{
    AVFrame *filtered_frame = NULL;
    int i;

    /* Reap all buffers present in the buffer sinks */
    for (i = 0; i < nb_output_streams; i++) {
        OutputStream *ost = output_streams[i];
        OutputFile    *of = output_files[ost->file_index];
        AVFilterContext *filter;
        AVCodecContext *enc = ost->enc_ctx;
        int ret = 0;

        if (!ost->filter || !ost->filter->graph->graph)
            continue;
        filter = ost->filter->filter;

        if (!ost->initialized) {
            char error[1024] = "";
            ret = FUNC18(ost, error, sizeof(error));
            if (ret < 0) {
                FUNC10(NULL, AV_LOG_ERROR, "Error initializing output stream %d:%d -- %s\n",
                       ost->file_index, ost->index, error);
                FUNC17(1);
            }
        }

        if (!ost->filtered_frame && !(ost->filtered_frame = FUNC8())) {
            return FUNC0(ENOMEM);
        }
        filtered_frame = ost->filtered_frame;

        while (1) {
            double float_pts = AV_NOPTS_VALUE; // this is identical to filtered_frame.pts but with higher precision
            ret = FUNC3(filter, filtered_frame,
                                               AV_BUFFERSINK_FLAG_NO_REQUEST);
            if (ret < 0) {
                if (ret != FUNC0(EAGAIN) && ret != AVERROR_EOF) {
                    FUNC10(NULL, AV_LOG_WARNING,
                           "Error in av_buffersink_get_frame_flags(): %s\n", FUNC7(ret));
                } else if (flush && ret == AVERROR_EOF) {
                    if (FUNC5(filter) == AVMEDIA_TYPE_VIDEO)
                        FUNC16(of, ost, NULL, AV_NOPTS_VALUE);
                }
                break;
            }
            if (ost->finished) {
                FUNC9(filtered_frame);
                continue;
            }
            if (filtered_frame->pts != AV_NOPTS_VALUE) {
                int64_t start_time = (of->start_time == AV_NOPTS_VALUE) ? 0 : of->start_time;
                AVRational filter_tb = FUNC4(filter);
                AVRational tb = enc->time_base;
                int extra_bits = FUNC6(29 - FUNC11(tb.den), 0, 16);

                tb.den <<= extra_bits;
                float_pts =
                    FUNC12(filtered_frame->pts, filter_tb, tb) -
                    FUNC12(start_time, AV_TIME_BASE_Q, tb);
                float_pts /= 1 << extra_bits;
                // avoid exact midoints to reduce the chance of rounding differences, this can be removed in case the fps code is changed to work with integers
                float_pts += FUNC1(float_pts) * 1.0 / (1<<17);

                filtered_frame->pts =
                    FUNC12(filtered_frame->pts, filter_tb, enc->time_base) -
                    FUNC12(start_time, AV_TIME_BASE_Q, enc->time_base);
            }

            switch (FUNC5(filter)) {
            case AVMEDIA_TYPE_VIDEO:
                if (!ost->frame_aspect_ratio.num)
                    enc->sample_aspect_ratio = filtered_frame->sample_aspect_ratio;

                if (debug_ts) {
                    FUNC10(NULL, AV_LOG_INFO, "filter -> pts:%s pts_time:%s exact:%f time_base:%d/%d\n",
                            FUNC13(filtered_frame->pts), FUNC14(filtered_frame->pts, &enc->time_base),
                            float_pts,
                            enc->time_base.num, enc->time_base.den);
                }

                FUNC16(of, ost, filtered_frame, float_pts);
                break;
            case AVMEDIA_TYPE_AUDIO:
                if (!(enc->codec->capabilities & AV_CODEC_CAP_PARAM_CHANGE) &&
                    enc->channels != filtered_frame->channels) {
                    FUNC10(NULL, AV_LOG_ERROR,
                           "Audio filter graph output is not normalized and encoder does not support parameter changes\n");
                    break;
                }
                FUNC15(of, ost, filtered_frame);
                break;
            default:
                // TODO support subtitle filters
                FUNC2(0);
            }

            FUNC9(filtered_frame);
        }
    }

    return 0;
}