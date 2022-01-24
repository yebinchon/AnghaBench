#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  char uint8_t ;
typedef  int int64_t ;
struct TYPE_12__ {scalar_t__ codec_id; char* extradata; int channels; } ;
struct TYPE_11__ {TYPE_1__** streams; int /*<<< orphan*/ * pb; } ;
struct TYPE_10__ {TYPE_6__* codecpar; } ;
typedef  TYPE_1__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int ALAC_HEADER ; 
 int ALAC_NEW_KUKI ; 
 int ALAC_PREAMBLE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int AVERROR_PATCHWELCOME ; 
 scalar_t__ AV_CODEC_ID_AAC ; 
 scalar_t__ AV_CODEC_ID_ALAC ; 
 scalar_t__ AV_CODEC_ID_OPUS ; 
 int AV_INPUT_BUFFER_PADDING_SIZE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int INT_MAX ; 
 int /*<<< orphan*/  FUNC2 (char**) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,char*) ; 
 scalar_t__ FUNC8 (TYPE_6__*,int) ; 
 scalar_t__ FUNC9 (TYPE_2__*,TYPE_6__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,int) ; 

__attribute__((used)) static int FUNC13(AVFormatContext *s, int64_t size)
{
    AVIOContext *pb = s->pb;
    AVStream *st      = s->streams[0];

    if (size < 0 || size > INT_MAX - AV_INPUT_BUFFER_PADDING_SIZE)
        return -1;

    if (st->codecpar->codec_id == AV_CODEC_ID_AAC) {
        /* The magic cookie format for AAC is an mp4 esds atom.
           The lavc AAC decoder requires the data from the codec specific
           description as extradata input. */
        int strt, skip;

        strt = FUNC6(pb);
        FUNC10(s, pb);
        skip = size - (FUNC6(pb) - strt);
        if (skip < 0 || !st->codecpar->extradata ||
            st->codecpar->codec_id != AV_CODEC_ID_AAC) {
            FUNC3(s, AV_LOG_ERROR, "invalid AAC magic cookie\n");
            return AVERROR_INVALIDDATA;
        }
        FUNC5(pb, skip);
    } else if (st->codecpar->codec_id == AV_CODEC_ID_ALAC) {
#define ALAC_PREAMBLE 12
#define ALAC_HEADER   36
#define ALAC_NEW_KUKI 24
        uint8_t preamble[12];
        if (size < ALAC_NEW_KUKI) {
            FUNC3(s, AV_LOG_ERROR, "invalid ALAC magic cookie\n");
            FUNC5(pb, size);
            return AVERROR_INVALIDDATA;
        }
        if (FUNC4(pb, preamble, ALAC_PREAMBLE) != ALAC_PREAMBLE) {
            FUNC3(s, AV_LOG_ERROR, "failed to read preamble\n");
            return AVERROR_INVALIDDATA;
        }

        FUNC2(&st->codecpar->extradata);
        if (FUNC8(st->codecpar, ALAC_HEADER))
            return FUNC0(ENOMEM);

        /* For the old style cookie, we skip 12 bytes, then read 36 bytes.
         * The new style cookie only contains the last 24 bytes of what was
         * 36 bytes in the old style cookie, so we fabricate the first 12 bytes
         * in that case to maintain compatibility. */
        if (!FUNC11(&preamble[4], "frmaalac", 8)) {
            if (size < ALAC_PREAMBLE + ALAC_HEADER) {
                FUNC3(s, AV_LOG_ERROR, "invalid ALAC magic cookie\n");
                FUNC2(&st->codecpar->extradata);
                return AVERROR_INVALIDDATA;
            }
            if (FUNC4(pb, st->codecpar->extradata, ALAC_HEADER) != ALAC_HEADER) {
                FUNC3(s, AV_LOG_ERROR, "failed to read kuki header\n");
                FUNC2(&st->codecpar->extradata);
                return AVERROR_INVALIDDATA;
            }
            FUNC5(pb, size - ALAC_PREAMBLE - ALAC_HEADER);
        } else {
            FUNC1(st->codecpar->extradata, 36);
            FUNC12(&st->codecpar->extradata[4], "alac", 4);
            FUNC1(&st->codecpar->extradata[8], 0);
            FUNC12(&st->codecpar->extradata[12], preamble, 12);
            if (FUNC4(pb, &st->codecpar->extradata[24], ALAC_NEW_KUKI - 12) != ALAC_NEW_KUKI - 12) {
                FUNC3(s, AV_LOG_ERROR, "failed to read new kuki header\n");
                FUNC2(&st->codecpar->extradata);
                return AVERROR_INVALIDDATA;
            }
            FUNC5(pb, size - ALAC_NEW_KUKI);
        }
    } else if (st->codecpar->codec_id == AV_CODEC_ID_OPUS) {
        // The data layout for Opus is currently unknown, so we do not export
        // extradata at all. Multichannel streams are not supported.
        if (st->codecpar->channels > 2) {
            FUNC7(s, "multichannel Opus in CAF");
            return AVERROR_PATCHWELCOME;
        }
        FUNC5(pb, size);
    } else {
        FUNC2(&st->codecpar->extradata);
        if (FUNC9(s, st->codecpar, pb, size) < 0)
            return FUNC0(ENOMEM);
    }

    return 0;
}