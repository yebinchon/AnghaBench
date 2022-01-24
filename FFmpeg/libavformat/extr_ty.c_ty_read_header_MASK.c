#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/ * pb; TYPE_2__* priv_data; } ;
struct TYPE_12__ {TYPE_1__* codecpar; void* need_parsing; } ;
struct TYPE_11__ {scalar_t__ tivo_series; scalar_t__ audio_type; scalar_t__ tivo_type; int first_chunk; int /*<<< orphan*/  chunk; void* last_video_pts; void* last_audio_pts; void* first_audio_pts; } ;
struct TYPE_10__ {int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_2__ TYDemuxContext ;
typedef  TYPE_3__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_VIDEO ; 
 void* AVSTREAM_PARSE_FULL_RAW ; 
 int /*<<< orphan*/  AV_CODEC_ID_AC3 ; 
 int /*<<< orphan*/  AV_CODEC_ID_MP2 ; 
 int /*<<< orphan*/  AV_CODEC_ID_MPEG2VIDEO ; 
 void* AV_NOPTS_VALUE ; 
 int CHUNK_PEEK_COUNT ; 
 int /*<<< orphan*/  CHUNK_SIZE ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ TIVO_AUDIO_MPEG ; 
 scalar_t__ TIVO_AUDIO_UNKNOWN ; 
 scalar_t__ TIVO_SERIES_UNKNOWN ; 
 scalar_t__ TIVO_TYPE_UNKNOWN ; 
 int FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int,int,int) ; 

__attribute__((used)) static int FUNC6(AVFormatContext *s)
{
    TYDemuxContext *ty = s->priv_data;
    AVIOContext *pb = s->pb;
    AVStream *st, *ast;
    int i, ret = 0;

    ty->first_audio_pts = AV_NOPTS_VALUE;
    ty->last_audio_pts = AV_NOPTS_VALUE;
    ty->last_video_pts = AV_NOPTS_VALUE;

    for (i = 0; i < CHUNK_PEEK_COUNT; i++) {
        FUNC3(pb, ty->chunk, CHUNK_SIZE);

        ret = FUNC1(s, ty->chunk);
        if (ret < 0)
            return ret;
        if (ty->tivo_series != TIVO_SERIES_UNKNOWN &&
            ty->audio_type  != TIVO_AUDIO_UNKNOWN &&
            ty->tivo_type   != TIVO_TYPE_UNKNOWN)
            break;
    }

    if (ty->tivo_series == TIVO_SERIES_UNKNOWN ||
        ty->audio_type == TIVO_AUDIO_UNKNOWN ||
        ty->tivo_type == TIVO_TYPE_UNKNOWN)
        return FUNC0(EIO);

    st = FUNC2(s, NULL);
    if (!st)
        return FUNC0(ENOMEM);
    st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    st->codecpar->codec_id   = AV_CODEC_ID_MPEG2VIDEO;
    st->need_parsing         = AVSTREAM_PARSE_FULL_RAW;
    FUNC5(st, 64, 1, 90000);

    ast = FUNC2(s, NULL);
    if (!ast)
        return FUNC0(ENOMEM);
    ast->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;

    if (ty->audio_type == TIVO_AUDIO_MPEG) {
        ast->codecpar->codec_id = AV_CODEC_ID_MP2;
        ast->need_parsing       = AVSTREAM_PARSE_FULL_RAW;
    } else {
        ast->codecpar->codec_id = AV_CODEC_ID_AC3;
    }
    FUNC5(ast, 64, 1, 90000);

    ty->first_chunk = 1;

    FUNC4(pb, 0, SEEK_SET);

    return 0;
}