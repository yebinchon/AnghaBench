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

/* Type definitions */
typedef  char uint8_t ;
typedef  scalar_t__ int64_t ;
struct TYPE_22__ {char* str; } ;
struct TYPE_21__ {int nb_streams; scalar_t__ duration; TYPE_1__** streams; int /*<<< orphan*/  pb; TYPE_4__* priv_data; } ;
struct TYPE_20__ {int safe; int nb_files; int seekable; int /*<<< orphan*/  stream_match_mode; TYPE_2__* files; } ;
struct TYPE_19__ {int /*<<< orphan*/  metadata; scalar_t__ outpoint; scalar_t__ inpoint; scalar_t__ user_duration; } ;
struct TYPE_18__ {scalar_t__ start_time; scalar_t__ user_duration; scalar_t__ inpoint; scalar_t__ outpoint; scalar_t__ duration; } ;
struct TYPE_17__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_3__ ConcatFile ;
typedef  TYPE_4__ ConcatContext ;
typedef  TYPE_5__ AVFormatContext ;
typedef  TYPE_6__ AVBPrint ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AVERROR_EOF ; 
 int /*<<< orphan*/  AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_BPRINT_SIZE_UNLIMITED ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ AV_NOPTS_VALUE ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MATCH_EXACT_ID ; 
 int /*<<< orphan*/  MATCH_ONE_TO_ONE ; 
 int /*<<< orphan*/  SPACE_CHARS ; 
 scalar_t__ FUNC2 (TYPE_5__*,char*,TYPE_3__**,unsigned int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char**) ; 
 char* FUNC7 (char const**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int /*<<< orphan*/ ,char*,int,...) ; 
 scalar_t__ FUNC9 (scalar_t__*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,TYPE_6__*) ; 
 char* FUNC13 (char**) ; 
 scalar_t__ FUNC14 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(AVFormatContext *avf)
{
    ConcatContext *cat = avf->priv_data;
    AVBPrint bp;
    uint8_t *cursor, *keyword;
    int line = 0, i;
    unsigned nb_files_alloc = 0;
    ConcatFile *file = NULL;
    int64_t ret, time = 0;

    FUNC4(&bp, 0, AV_BPRINT_SIZE_UNLIMITED);

    while ((ret = FUNC12(avf->pb, &bp)) >= 0) {
        line++;
        cursor = bp.str;
        keyword = FUNC13(&cursor);
        if (!*keyword || *keyword == '#')
            continue;

        if (!FUNC15(keyword, "file")) {
            char *filename = FUNC7((const char **)&cursor, SPACE_CHARS);
            if (!filename) {
                FUNC8(avf, AV_LOG_ERROR, "Line %d: filename required\n", line);
                FUNC1(AVERROR_INVALIDDATA);
            }
            if ((ret = FUNC2(avf, filename, &file, &nb_files_alloc)) < 0)
                goto fail;
        } else if (!FUNC15(keyword, "duration") || !FUNC15(keyword, "inpoint") || !FUNC15(keyword, "outpoint")) {
            char *dur_str = FUNC13(&cursor);
            int64_t dur;
            if (!file) {
                FUNC8(avf, AV_LOG_ERROR, "Line %d: %s without file\n",
                       line, keyword);
                FUNC1(AVERROR_INVALIDDATA);
            }
            if ((ret = FUNC9(&dur, dur_str, 1)) < 0) {
                FUNC8(avf, AV_LOG_ERROR, "Line %d: invalid %s '%s'\n",
                       line, keyword, dur_str);
                goto fail;
            }
            if (!FUNC15(keyword, "duration"))
                file->user_duration = dur;
            else if (!FUNC15(keyword, "inpoint"))
                file->inpoint = dur;
            else if (!FUNC15(keyword, "outpoint"))
                file->outpoint = dur;
        } else if (!FUNC15(keyword, "file_packet_metadata")) {
            char *metadata;
            if (!file) {
                FUNC8(avf, AV_LOG_ERROR, "Line %d: %s without file\n",
                       line, keyword);
                FUNC1(AVERROR_INVALIDDATA);
            }
            metadata = FUNC7((const char **)&cursor, SPACE_CHARS);
            if (!metadata) {
                FUNC8(avf, AV_LOG_ERROR, "Line %d: packet metadata required\n", line);
                FUNC1(AVERROR_INVALIDDATA);
            }
            if ((ret = FUNC5(&file->metadata, metadata, "=", "", 0)) < 0) {
                FUNC8(avf, AV_LOG_ERROR, "Line %d: failed to parse metadata string\n", line);
                FUNC6(&metadata);
                FUNC1(AVERROR_INVALIDDATA);
            }
            FUNC6(&metadata);
        } else if (!FUNC15(keyword, "stream")) {
            if (!FUNC10(avf, NULL))
                FUNC1(FUNC0(ENOMEM));
        } else if (!FUNC15(keyword, "exact_stream_id")) {
            if (!avf->nb_streams) {
                FUNC8(avf, AV_LOG_ERROR, "Line %d: exact_stream_id without stream\n",
                       line);
                FUNC1(AVERROR_INVALIDDATA);
            }
            avf->streams[avf->nb_streams - 1]->id =
                FUNC16(FUNC13(&cursor), NULL, 0);
        } else if (!FUNC15(keyword, "ffconcat")) {
            char *ver_kw  = FUNC13(&cursor);
            char *ver_val = FUNC13(&cursor);
            if (FUNC15(ver_kw, "version") || FUNC15(ver_val, "1.0")) {
                FUNC8(avf, AV_LOG_ERROR, "Line %d: invalid version\n", line);
                FUNC1(AVERROR_INVALIDDATA);
            }
            if (cat->safe < 0)
                cat->safe = 1;
        } else {
            FUNC8(avf, AV_LOG_ERROR, "Line %d: unknown keyword '%s'\n",
                   line, keyword);
            FUNC1(AVERROR_INVALIDDATA);
        }
    }
    if (ret != AVERROR_EOF && ret < 0)
        goto fail;
    if (!cat->nb_files)
        FUNC1(AVERROR_INVALIDDATA);

    for (i = 0; i < cat->nb_files; i++) {
        if (cat->files[i].start_time == AV_NOPTS_VALUE)
            cat->files[i].start_time = time;
        else
            time = cat->files[i].start_time;
        if (cat->files[i].user_duration == AV_NOPTS_VALUE) {
            if (cat->files[i].inpoint == AV_NOPTS_VALUE || cat->files[i].outpoint == AV_NOPTS_VALUE)
                break;
            cat->files[i].user_duration = cat->files[i].outpoint - cat->files[i].inpoint;
        }
        cat->files[i].duration = cat->files[i].user_duration;
        time += cat->files[i].user_duration;
    }
    if (i == cat->nb_files) {
        avf->duration = time;
        cat->seekable = 1;
    }

    cat->stream_match_mode = avf->nb_streams ? MATCH_EXACT_ID :
                                               MATCH_ONE_TO_ONE;
    if ((ret = FUNC14(avf, 0)) < 0)
        goto fail;
    FUNC3(&bp, NULL);
    return 0;

fail:
    FUNC3(&bp, NULL);
    FUNC11(avf);
    return ret;
}