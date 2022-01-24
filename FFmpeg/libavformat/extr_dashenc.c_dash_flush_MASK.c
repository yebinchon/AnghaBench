#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_17__ ;

/* Type definitions */
typedef  int int64_t ;
struct TYPE_26__ {int nb_streams; TYPE_5__** streams; int /*<<< orphan*/  url; TYPE_4__* priv_data; } ;
struct TYPE_25__ {int /*<<< orphan*/  time_base; TYPE_1__* codecpar; } ;
struct TYPE_24__ {int seg_duration; char* dirname; int window_size; int extra_window_size; scalar_t__ nr_of_streams_flushed; scalar_t__ nr_of_streams_to_flush; scalar_t__ has_video; scalar_t__ global_sidx; TYPE_3__* streams; scalar_t__ single_file; scalar_t__ index_correction; int /*<<< orphan*/  use_timeline; scalar_t__ use_template; } ;
struct TYPE_23__ {int segment_index; scalar_t__ last_pts; scalar_t__ first_pts; scalar_t__ segment_type; int pos; int muxer_overhead; int total_pkt_size; scalar_t__ max_pts; scalar_t__ start_pts; int bit_rate; int nb_segments; TYPE_2__** segments; int /*<<< orphan*/  init_range_length; TYPE_17__* ctx; scalar_t__ ctx_inited; int /*<<< orphan*/  full_path; int /*<<< orphan*/  filename; int /*<<< orphan*/  temp_path; int /*<<< orphan*/  out; scalar_t__ packets_written; int /*<<< orphan*/  initfile; int /*<<< orphan*/  written_len; } ;
struct TYPE_22__ {int /*<<< orphan*/  start_pos; } ;
struct TYPE_21__ {scalar_t__ codec_type; } ;
struct TYPE_20__ {int /*<<< orphan*/  pb; } ;
typedef  TYPE_2__ Segment ;
typedef  TYPE_3__ OutputStream ;
typedef  TYPE_4__ DASHContext ;
typedef  TYPE_5__ AVStream ;
typedef  TYPE_6__ AVFormatContext ;

/* Variables and functions */
 scalar_t__ AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AV_LOG_VERBOSE ; 
 scalar_t__ AV_NOPTS_VALUE ; 
 int AV_TIME_BASE ; 
 int /*<<< orphan*/  AV_TIME_BASE_Q ; 
 scalar_t__ SEGMENT_TYPE_MP4 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_17__*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,int /*<<< orphan*/ ,int,int*) ; 
 int FUNC10 (TYPE_4__*,TYPE_3__*,int*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,TYPE_4__*,int*,int*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char const*,char*) ; 
 int FUNC14 (TYPE_6__*,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC16(AVFormatContext *s, int final, int stream)
{
    DASHContext *c = s->priv_data;
    int i, ret = 0;

    const char *proto = FUNC4(s->url);
    int use_rename = proto && !FUNC13(proto, "file");

    int cur_flush_segment_index = 0, next_exp_index = -1;
    if (stream >= 0) {
        cur_flush_segment_index = c->streams[stream].segment_index;

        //finding the next segment's expected index, based on the current pts value
        if (c->use_template && !c->use_timeline && c->index_correction &&
            c->streams[stream].last_pts != AV_NOPTS_VALUE &&
            c->streams[stream].first_pts != AV_NOPTS_VALUE) {
            int64_t pts_diff = FUNC2(c->streams[stream].last_pts -
                                            c->streams[stream].first_pts,
                                            s->streams[stream]->time_base,
                                            AV_TIME_BASE_Q);
            next_exp_index = (pts_diff / c->seg_duration) + 1;
        }
    }

    for (i = 0; i < s->nb_streams; i++) {
        OutputStream *os = &c->streams[i];
        AVStream *st = s->streams[i];
        int range_length, index_length = 0;

        if (!os->packets_written)
            continue;

        // Flush the single stream that got a keyframe right now.
        // Flush all audio streams as well, in sync with video keyframes,
        // but not the other video streams.
        if (stream >= 0 && i != stream) {
            if (s->streams[i]->codecpar->codec_type != AVMEDIA_TYPE_AUDIO)
                continue;
            // Make sure we don't flush audio streams multiple times, when
            // all video streams are flushed one at a time.
            if (c->has_video && os->segment_index > cur_flush_segment_index)
                continue;
        }

        if (!c->single_file) {
            if (os->segment_type == SEGMENT_TYPE_MP4 && !os->written_len)
                FUNC15(os->ctx->pb);
        } else {
            FUNC12(os->full_path, sizeof(os->full_path), "%s%s", c->dirname, os->initfile);
        }

        ret = FUNC10(c, os, &range_length);
        if (ret < 0)
            break;
        os->packets_written = 0;

        if (c->single_file) {
            FUNC9(s, os->full_path, os->pos, &index_length);
        } else {
            FUNC8(s, &os->out, os->temp_path);

            if (use_rename) {
                ret = FUNC6(os->temp_path, os->full_path);
                if (ret < 0)
                    break;
            }
        }

        if (!os->muxer_overhead)
            os->muxer_overhead = ((int64_t) (range_length - os->total_pkt_size) *
                                  8 * AV_TIME_BASE) /
                                 FUNC2(os->max_pts - os->start_pts,
                                              st->time_base, AV_TIME_BASE_Q);
        os->total_pkt_size = 0;

        if (!os->bit_rate) {
            // calculate average bitrate of first segment
            int64_t bitrate = (int64_t) range_length * 8 * AV_TIME_BASE / FUNC2(os->max_pts - os->start_pts,
                                                                                       st->time_base,
                                                                                       AV_TIME_BASE_Q);
            if (bitrate >= 0)
                os->bit_rate = bitrate;
        }
        FUNC0(os, os->filename, os->start_pts, os->max_pts - os->start_pts, os->pos, range_length, index_length, next_exp_index);
        FUNC1(s, AV_LOG_VERBOSE, "Representation %d media segment %d written to: %s\n", i, os->segment_index, os->full_path);

        os->pos += range_length;
    }

    if (c->window_size) {
        for (i = 0; i < s->nb_streams; i++) {
            OutputStream *os = &c->streams[i];
            int remove_count = os->nb_segments - c->window_size - c->extra_window_size;
            if (remove_count > 0)
                FUNC7(s, os, remove_count);
        }
    }

    if (final) {
        for (i = 0; i < s->nb_streams; i++) {
            OutputStream *os = &c->streams[i];
            if (os->ctx && os->ctx_inited) {
                int64_t file_size = FUNC5(os->ctx->pb);
                FUNC3(os->ctx);
                if (c->global_sidx) {
                    int j, start_index, start_number;
                    int64_t sidx_size = FUNC5(os->ctx->pb) - file_size;
                    FUNC11(os, c, &start_index, &start_number);
                    if (start_index >= os->nb_segments ||
                        os->segment_type != SEGMENT_TYPE_MP4)
                        continue;
                    os->init_range_length += sidx_size;
                    for (j = start_index; j < os->nb_segments; j++) {
                        Segment *seg = os->segments[j];
                        seg->start_pos += sidx_size;
                    }
                }

            }
        }
    }
    if (ret >= 0) {
        if (c->has_video && !final) {
            c->nr_of_streams_flushed++;
            if (c->nr_of_streams_flushed != c->nr_of_streams_to_flush)
                return ret;

            c->nr_of_streams_flushed = 0;
        }
        ret = FUNC14(s, final);
    }
    return ret;
}