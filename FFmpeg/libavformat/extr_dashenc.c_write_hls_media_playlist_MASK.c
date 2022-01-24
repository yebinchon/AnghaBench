#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;
typedef  struct TYPE_16__   TYPE_15__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  temp_filename_hls ;
typedef  int /*<<< orphan*/  filename_hls ;
struct TYPE_22__ {TYPE_5__* priv_data; } ;
struct TYPE_21__ {double start_time_s; int /*<<< orphan*/  m3u8_out; scalar_t__ single_file; int /*<<< orphan*/  dirname; int /*<<< orphan*/  hls_playlist; } ;
struct TYPE_20__ {int nb_segments; scalar_t__ segment_type; TYPE_15__* ctx; int /*<<< orphan*/  initfile; TYPE_3__** segments; int /*<<< orphan*/  init_start_pos; int /*<<< orphan*/  init_range_length; } ;
struct TYPE_19__ {double prog_date_time; int /*<<< orphan*/  file; int /*<<< orphan*/  start_pos; int /*<<< orphan*/  range_length; scalar_t__ duration; } ;
struct TYPE_17__ {int den; } ;
struct TYPE_18__ {TYPE_1__ time_base; } ;
struct TYPE_16__ {TYPE_2__** streams; } ;
typedef  TYPE_3__ Segment ;
typedef  TYPE_4__ OutputStream ;
typedef  TYPE_5__ DASHContext ;
typedef  TYPE_6__ AVFormatContext ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  PLAYLIST_TYPE_NONE ; 
 scalar_t__ SEGMENT_TYPE_MP4 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_15__*,int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int /*<<< orphan*/ *,char*) ; 
 int FUNC6 (TYPE_6__*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,double,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,double*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_4__*,TYPE_5__*,int*,int*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_6__*,int,char*) ; 
 int FUNC14 (double) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ **,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC16 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC17 (char const*,char*) ; 

__attribute__((used)) static void FUNC18(OutputStream *os, AVFormatContext *s,
                                     int representation_id, int final,
                                     char *prefetch_url) {
    DASHContext *c = s->priv_data;
    int timescale = os->ctx->streams[0]->time_base.den;
    char temp_filename_hls[1024];
    char filename_hls[1024];
    AVDictionary *http_opts = NULL;
    int target_duration = 0;
    int ret = 0;
    const char *proto = FUNC2(c->dirname);
    int use_rename = proto && !FUNC17(proto, "file");
    int i, start_index, start_number;
    double prog_date_time = 0;

    FUNC12(os, c, &start_index, &start_number);

    if (!c->hls_playlist || start_index >= os->nb_segments ||
        os->segment_type != SEGMENT_TYPE_MP4)
        return;

    FUNC11(filename_hls, sizeof(filename_hls),
                          c->dirname, representation_id);

    FUNC16(temp_filename_hls, sizeof(temp_filename_hls), use_rename ? "%s.tmp" : "%s", filename_hls);

    FUNC15(&http_opts, c);
    ret = FUNC6(s, &c->m3u8_out, temp_filename_hls, &http_opts);
    FUNC0(&http_opts);
    if (ret < 0) {
        FUNC13(s, ret, temp_filename_hls);
        return;
    }
    for (i = start_index; i < os->nb_segments; i++) {
        Segment *seg = os->segments[i];
        double duration = (double) seg->duration / timescale;
        if (target_duration <= duration)
            target_duration = FUNC14(duration);
    }

    FUNC10(c->m3u8_out, 6, -1, target_duration,
                                 start_number, PLAYLIST_TYPE_NONE, 0);

    FUNC9(c->m3u8_out, os->initfile, c->single_file,
                           os->init_range_length, os->init_start_pos);

    for (i = start_index; i < os->nb_segments; i++) {
        Segment *seg = os->segments[i];

        if (prog_date_time == 0) {
            if (os->nb_segments == 1)
                prog_date_time = c->start_time_s;
            else
                prog_date_time = seg->prog_date_time;
        }
        seg->prog_date_time = prog_date_time;

        ret = FUNC8(c->m3u8_out, 0, c->single_file,
                                (double) seg->duration / timescale, 0,
                                seg->range_length, seg->start_pos, NULL,
                                c->single_file ? os->initfile : seg->file,
                                &prog_date_time, 0, 0, 0);
        if (ret < 0) {
            FUNC1(os->ctx, AV_LOG_WARNING, "ff_hls_write_file_entry get error\n");
        }
    }

    if (prefetch_url)
        FUNC3(c->m3u8_out, "#EXT-X-PREFETCH:%s\n", prefetch_url);

    if (final)
        FUNC7(c->m3u8_out);

    FUNC5(s, &c->m3u8_out, temp_filename_hls);

    if (use_rename)
        if (FUNC4(temp_filename_hls, filename_hls) < 0) {
            FUNC1(os->ctx, AV_LOG_WARNING, "renaming file %s to %s failed\n\n", temp_filename_hls, filename_hls);
        }
}