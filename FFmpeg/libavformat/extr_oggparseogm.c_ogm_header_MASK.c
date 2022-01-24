#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int uint64_t ;
typedef  int uint32_t ;
struct ogg_stream {int /*<<< orphan*/  psize; scalar_t__ pstart; scalar_t__ buf; } ;
struct ogg {struct ogg_stream* streams; } ;
struct TYPE_23__ {scalar_t__ codec_type; scalar_t__ codec_id; int codec_tag; int width; int height; int bit_rate; int sample_rate; int extradata_size; scalar_t__* extradata; int /*<<< orphan*/  channels; } ;
struct TYPE_22__ {TYPE_3__** streams; struct ogg* priv_data; } ;
struct TYPE_21__ {TYPE_1__* internal; TYPE_8__* codecpar; int /*<<< orphan*/  need_parsing; } ;
struct TYPE_20__ {int /*<<< orphan*/  buffer; } ;
struct TYPE_19__ {int need_context_update; } ;
typedef  TYPE_2__ GetByteContext ;
typedef  TYPE_3__ AVStream ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 scalar_t__ AVMEDIA_TYPE_AUDIO ; 
 scalar_t__ AVMEDIA_TYPE_SUBTITLE ; 
 scalar_t__ AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  AVSTREAM_PARSE_FULL ; 
 int /*<<< orphan*/  AVSTREAM_PARSE_HEADERS ; 
 scalar_t__ AV_CODEC_ID_AAC ; 
 scalar_t__ AV_CODEC_ID_MPEG4 ; 
 scalar_t__ AV_CODEC_ID_TEXT ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,scalar_t__*,int) ; 
 int FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int FUNC8 (TYPE_2__*) ; 
 int FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int) ; 
 scalar_t__ FUNC13 (TYPE_8__*,int) ; 
 int /*<<< orphan*/  ff_codec_bmp_tags ; 
 void* FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ff_codec_wav_tags ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int FUNC16 (scalar_t__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC17(AVFormatContext *s, int idx)
{
    struct ogg *ogg = s->priv_data;
    struct ogg_stream *os = ogg->streams + idx;
    AVStream *st = s->streams[idx];
    GetByteContext p;
    uint64_t time_unit;
    uint64_t spu;
    uint32_t size;

    FUNC10(&p, os->buf + os->pstart, os->psize);
    if (!(FUNC11(&p) & 1))
        return 0;

    if (FUNC11(&p) == 1) {
        FUNC12(&p, 1);

        if (FUNC11(&p) == 'v'){
            int tag;
            st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
            FUNC12(&p, 8);
            tag = FUNC8(&p);
            st->codecpar->codec_id = FUNC14(ff_codec_bmp_tags, tag);
            st->codecpar->codec_tag = tag;
            if (st->codecpar->codec_id == AV_CODEC_ID_MPEG4)
                st->need_parsing = AVSTREAM_PARSE_HEADERS;
        } else if (FUNC11(&p) == 't') {
            st->codecpar->codec_type = AVMEDIA_TYPE_SUBTITLE;
            st->codecpar->codec_id = AV_CODEC_ID_TEXT;
            FUNC12(&p, 12);
        } else {
            uint8_t acid[5] = { 0 };
            int cid;
            st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
            FUNC12(&p, 8);
            FUNC5(&p, acid, 4);
            acid[4] = 0;
            cid = FUNC16(acid, NULL, 16);
            st->codecpar->codec_id = FUNC14(ff_codec_wav_tags, cid);
            // our parser completely breaks AAC in Ogg
            if (st->codecpar->codec_id != AV_CODEC_ID_AAC)
                st->need_parsing = AVSTREAM_PARSE_FULL;
        }

        size        = FUNC8(&p);
        size        = FUNC1(size, os->psize);
        time_unit   = FUNC9(&p);
        spu         = FUNC9(&p);
        if (!time_unit || !spu) {
            FUNC3(s, AV_LOG_ERROR, "Invalid timing values.\n");
            return AVERROR_INVALIDDATA;
        }

        FUNC12(&p, 4);    /* default_len */
        FUNC12(&p, 8);    /* buffersize + bits_per_sample */

        if(st->codecpar->codec_type == AVMEDIA_TYPE_VIDEO){
            st->codecpar->width = FUNC8(&p);
            st->codecpar->height = FUNC8(&p);
            FUNC4(st, 64, time_unit, spu * 10000000);
        } else {
            st->codecpar->channels = FUNC7(&p);
            FUNC12(&p, 2); /* block_align */
            st->codecpar->bit_rate = FUNC8(&p) * 8;
            st->codecpar->sample_rate = spu * 10000000 / time_unit;
            FUNC4(st, 64, 1, st->codecpar->sample_rate);
            if (size >= 56 && st->codecpar->codec_id == AV_CODEC_ID_AAC) {
                FUNC12(&p, 4);
                size -= 4;
            }
            if (size > 52) {
                size -= 52;
                if (FUNC6(&p) < size)
                    return AVERROR_INVALIDDATA;
                FUNC2(&st->codecpar->extradata);
                if (FUNC13(st->codecpar, size) < 0)
                    return FUNC0(ENOMEM);
                FUNC5(&p, st->codecpar->extradata, st->codecpar->extradata_size);
            }
        }

        // Update internal avctx with changes to codecpar above.
        st->internal->need_context_update = 1;
    } else if (FUNC11(&p) == 3) {
        FUNC12(&p, 7);
        if (FUNC6(&p) > 1)
            FUNC15(s, st, p.buffer, FUNC6(&p) - 1);
    }

    return 1;
}