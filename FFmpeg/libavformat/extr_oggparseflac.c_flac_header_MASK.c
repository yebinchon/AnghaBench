#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
struct ogg_stream {int* buf; size_t pstart; int psize; } ;
struct ogg {struct ogg_stream* streams; } ;
struct TYPE_10__ {scalar_t__ extradata; int /*<<< orphan*/  extradata_size; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; } ;
struct TYPE_9__ {TYPE_1__** streams; struct ogg* priv_data; } ;
struct TYPE_8__ {TYPE_6__* codecpar; int /*<<< orphan*/  need_parsing; } ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_1__ AVStream ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AVSTREAM_PARSE_HEADERS ; 
 int /*<<< orphan*/  AV_CODEC_ID_FLAC ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FLAC_METADATA_TYPE_VORBIS_COMMENT ; 
 scalar_t__ FLAC_STREAMINFO_SIZE ; 
 int OGG_FLAC_METADATA_TYPE_STREAMINFO ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int,int) ; 
 scalar_t__ FUNC3 (TYPE_6__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_1__*,int*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC11 (AVFormatContext * s, int idx)
{
    struct ogg *ogg = s->priv_data;
    struct ogg_stream *os = ogg->streams + idx;
    AVStream *st = s->streams[idx];
    GetBitContext gb;
    int mdt;

    if (os->buf[os->pstart] == 0xff)
        return 0;

    FUNC7(&gb, os->buf + os->pstart, os->psize*8);
    FUNC9(&gb); /* metadata_last */
    mdt = FUNC5(&gb, 7);

    if (mdt == OGG_FLAC_METADATA_TYPE_STREAMINFO) {
        uint8_t *streaminfo_start = os->buf + os->pstart + 5 + 4 + 4 + 4;
        uint32_t samplerate;

        FUNC10(&gb, 4*8); /* "FLAC" */
        if(FUNC5(&gb, 8) != 1) /* unsupported major version */
            return -1;
        FUNC10(&gb, 8 + 16); /* minor version + header count */
        FUNC10(&gb, 4*8); /* "fLaC" */

        /* METADATA_BLOCK_HEADER */
        if (FUNC6(&gb, 32) != FLAC_STREAMINFO_SIZE)
            return -1;

        st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
        st->codecpar->codec_id = AV_CODEC_ID_FLAC;
        st->need_parsing = AVSTREAM_PARSE_HEADERS;

        if (FUNC3(st->codecpar, FLAC_STREAMINFO_SIZE) < 0)
            return FUNC0(ENOMEM);
        FUNC8(st->codecpar->extradata, streaminfo_start, st->codecpar->extradata_size);

        samplerate = FUNC1(st->codecpar->extradata + 10) >> 4;
        if (!samplerate)
            return AVERROR_INVALIDDATA;

        FUNC2(st, 64, 1, samplerate);
    } else if (mdt == FLAC_METADATA_TYPE_VORBIS_COMMENT) {
        FUNC4(s, st, os->buf + os->pstart + 4, os->psize - 4);
    }

    return 1;
}