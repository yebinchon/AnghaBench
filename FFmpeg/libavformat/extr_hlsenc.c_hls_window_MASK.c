#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  temp_vtt_filename ;
typedef  int /*<<< orphan*/  temp_filename ;
typedef  scalar_t__ int64_t ;
struct TYPE_15__ {char* m3u8_name; scalar_t__ discontinuity_set; char* vtt_m3u8_name; int /*<<< orphan*/  out; int /*<<< orphan*/  baseurl; TYPE_2__* segments; int /*<<< orphan*/  init_range_length; int /*<<< orphan*/  fmp4_init_filename; scalar_t__ has_video; int /*<<< orphan*/  initial_prog_date_time; scalar_t__ nb_entries; scalar_t__ sequence; } ;
typedef  TYPE_1__ VariantStream ;
struct TYPE_18__ {TYPE_3__* priv_data; } ;
struct TYPE_17__ {scalar_t__ start_sequence; int flags; scalar_t__ pl_type; scalar_t__ max_seg_size; int version; scalar_t__ segment_type; scalar_t__ master_pl_name; int /*<<< orphan*/  sub_m3u8_out; int /*<<< orphan*/  m3u8_out; int /*<<< orphan*/  allowcache; scalar_t__ ignore_io_errors; scalar_t__ key_info_file; scalar_t__ encrypt; } ;
struct TYPE_16__ {int duration; char const* key_uri; char* iv_string; int /*<<< orphan*/  sub_filename; int /*<<< orphan*/  pos; int /*<<< orphan*/  size; struct TYPE_16__* next; int /*<<< orphan*/  keyframe_pos; int /*<<< orphan*/  keyframe_size; int /*<<< orphan*/  filename; int /*<<< orphan*/  discont; } ;
typedef  TYPE_2__ HLSSegment ;
typedef  TYPE_3__ HLSContext ;
typedef  TYPE_4__ AVFormatContext ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int HLS_DISCONT_START ; 
 int HLS_INDEPENDENT_SEGMENTS ; 
 int HLS_I_FRAMES_ONLY ; 
 int HLS_OMIT_ENDLIST ; 
 int HLS_PROGRAM_DATE_TIME ; 
 int HLS_ROUND_DURATIONS ; 
 int HLS_SINGLE_FILE ; 
 int HLS_TEMP_FILE ; 
 int MAX_URL_SIZE ; 
 scalar_t__ PLAYLIST_TYPE_NONE ; 
 scalar_t__ PLAYLIST_TYPE_VOD ; 
 scalar_t__ SEGMENT_TYPE_FMP4 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC6 (TYPE_4__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,double*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,TYPE_4__*) ; 
 int FUNC12 (TYPE_4__*,int /*<<< orphan*/ *,char*) ; 
 int FUNC13 (TYPE_4__*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **) ; 
 int FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,int /*<<< orphan*/ **,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC16 (char*,int,char*,char*) ; 
 scalar_t__ FUNC17 (char const*,char*) ; 

__attribute__((used)) static int FUNC18(AVFormatContext *s, int last, VariantStream *vs)
{
    HLSContext *hls = s->priv_data;
    HLSSegment *en;
    int target_duration = 0;
    int ret = 0;
    char temp_filename[MAX_URL_SIZE];
    char temp_vtt_filename[MAX_URL_SIZE];
    int64_t sequence = FUNC0(hls->start_sequence, vs->sequence - vs->nb_entries);
    const char *proto = FUNC4(vs->m3u8_name);
    int is_file_proto = proto && !FUNC17(proto, "file");
    int use_temp_file = is_file_proto && ((hls->flags & HLS_TEMP_FILE) || !(hls->pl_type == PLAYLIST_TYPE_VOD));
    static unsigned warned_non_file;
    char *key_uri = NULL;
    char *iv_string = NULL;
    AVDictionary *options = NULL;
    double prog_date_time = vs->initial_prog_date_time;
    double *prog_date_time_p = (hls->flags & HLS_PROGRAM_DATE_TIME) ? &prog_date_time : NULL;
    int byterange_mode = (hls->flags & HLS_SINGLE_FILE) || (hls->max_seg_size > 0);

    hls->version = 3;
    if (byterange_mode) {
        hls->version = 4;
        sequence = 0;
    }

    if (hls->flags & HLS_INDEPENDENT_SEGMENTS) {
        hls->version = 6;
    }

    if (hls->segment_type == SEGMENT_TYPE_FMP4) {
        hls->version = 7;
    }

    if (!is_file_proto && (hls->flags & HLS_TEMP_FILE) && !warned_non_file++)
        FUNC2(s, AV_LOG_ERROR, "Cannot use rename on non file protocol, this may lead to races and temporary partial files\n");

    FUNC15(s, &options, hls);
    FUNC16(temp_filename, sizeof(temp_filename), use_temp_file ? "%s.tmp" : "%s", vs->m3u8_name);
    if ((ret = FUNC13(s, byterange_mode ? &hls->m3u8_out : &vs->out, temp_filename, &options)) < 0) {
        if (hls->ignore_io_errors)
            ret = 0;
        goto fail;
    }

    for (en = vs->segments; en; en = en->next) {
        if (target_duration <= en->duration)
            target_duration = FUNC14(en->duration);
    }

    vs->discontinuity_set = 0;
    FUNC10(byterange_mode ? hls->m3u8_out : vs->out, hls->version, hls->allowcache,
                                 target_duration, sequence, hls->pl_type, hls->flags & HLS_I_FRAMES_ONLY);

    if ((hls->flags & HLS_DISCONT_START) && sequence==hls->start_sequence && vs->discontinuity_set==0 ) {
        FUNC5(byterange_mode ? hls->m3u8_out : vs->out, "#EXT-X-DISCONTINUITY\n");
        vs->discontinuity_set = 1;
    }
    if (vs->has_video && (hls->flags & HLS_INDEPENDENT_SEGMENTS)) {
        FUNC5(byterange_mode ? hls->m3u8_out : vs->out, "#EXT-X-INDEPENDENT-SEGMENTS\n");
    }
    for (en = vs->segments; en; en = en->next) {
        if ((hls->encrypt || hls->key_info_file) && (!key_uri || FUNC17(en->key_uri, key_uri) ||
                                    FUNC3(en->iv_string, iv_string))) {
            FUNC5(byterange_mode ? hls->m3u8_out : vs->out, "#EXT-X-KEY:METHOD=AES-128,URI=\"%s\"", en->key_uri);
            if (*en->iv_string)
                FUNC5(byterange_mode ? hls->m3u8_out : vs->out, ",IV=0x%s", en->iv_string);
            FUNC5(byterange_mode ? hls->m3u8_out : vs->out, "\n");
            key_uri = en->key_uri;
            iv_string = en->iv_string;
        }

        if ((hls->segment_type == SEGMENT_TYPE_FMP4) && (en == vs->segments)) {
            FUNC9(byterange_mode ? hls->m3u8_out : vs->out, (hls->flags & HLS_SINGLE_FILE) ? en->filename : vs->fmp4_init_filename,
                                   hls->flags & HLS_SINGLE_FILE, vs->init_range_length, 0);
        }

        ret = FUNC8(byterange_mode ? hls->m3u8_out : vs->out, en->discont, byterange_mode,
                                      en->duration, hls->flags & HLS_ROUND_DURATIONS,
                                      en->size, en->pos, vs->baseurl,
                                      en->filename, prog_date_time_p, en->keyframe_size, en->keyframe_pos, hls->flags & HLS_I_FRAMES_ONLY);
        if (ret < 0) {
            FUNC2(s, AV_LOG_WARNING, "ff_hls_write_file_entry get error\n");
        }
    }

    if (last && (hls->flags & HLS_OMIT_ENDLIST)==0)
        FUNC7(byterange_mode ? hls->m3u8_out : vs->out);

    if (vs->vtt_m3u8_name) {
        FUNC16(temp_vtt_filename, sizeof(temp_vtt_filename), use_temp_file ? "%s.tmp" : "%s", vs->vtt_m3u8_name);
        if ((ret = FUNC13(s, &hls->sub_m3u8_out, temp_vtt_filename, &options)) < 0) {
            if (hls->ignore_io_errors)
                ret = 0;
            goto fail;
        }
        FUNC10(hls->sub_m3u8_out, hls->version, hls->allowcache,
                                     target_duration, sequence, PLAYLIST_TYPE_NONE, 0);
        for (en = vs->segments; en; en = en->next) {
            ret = FUNC8(hls->sub_m3u8_out, 0, byterange_mode,
                                          en->duration, 0, en->size, en->pos,
                                          vs->baseurl, en->sub_filename, NULL, 0, 0, 0);
            if (ret < 0) {
                FUNC2(s, AV_LOG_WARNING, "ff_hls_write_file_entry get error\n");
            }
        }

        if (last)
            FUNC7(hls->sub_m3u8_out);

    }

fail:
    FUNC1(&options);
    ret = FUNC12(s, byterange_mode ? &hls->m3u8_out : &vs->out, temp_filename);
    if (ret < 0) {
        return ret;
    }
    FUNC12(s, &hls->sub_m3u8_out, vs->vtt_m3u8_name);
    if (use_temp_file) {
        FUNC11(temp_filename, vs->m3u8_name, s);
        if (vs->vtt_m3u8_name)
            FUNC11(temp_vtt_filename, vs->vtt_m3u8_name, s);
    }
    if (ret >= 0 && hls->master_pl_name)
        if (FUNC6(s, vs) < 0)
            FUNC2(s, AV_LOG_WARNING, "Master playlist creation failed\n");

    return ret;
}