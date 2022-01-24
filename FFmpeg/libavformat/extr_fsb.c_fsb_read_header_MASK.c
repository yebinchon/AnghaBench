#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
struct TYPE_14__ {int sample_rate; int channels; int codec_id; int block_align; int bits_per_coded_sample; scalar_t__ extradata; scalar_t__ codec_tag; int /*<<< orphan*/  codec_type; } ;
struct TYPE_13__ {TYPE_1__* internal; int /*<<< orphan*/ * pb; } ;
struct TYPE_12__ {int duration; TYPE_4__* codecpar; } ;
struct TYPE_11__ {int data_offset; } ;
typedef  TYPE_2__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_3__ AVFormatContext ;
typedef  TYPE_4__ AVCodecParameters ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int AVERROR_PATCHWELCOME ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int AV_CODEC_ID_ADPCM_IMA_WAV ; 
 int AV_CODEC_ID_ADPCM_PSX ; 
#define  AV_CODEC_ID_ADPCM_THP 129 
 int AV_CODEC_ID_PCM_S16LE ; 
#define  AV_CODEC_ID_XMA2 128 
 int /*<<< orphan*/  ENOMEM ; 
 int INT_MAX ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 void* FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC15(AVFormatContext *s)
{
    AVIOContext *pb = s->pb;
    unsigned format, version, c;
    int64_t offset;
    AVCodecParameters *par;
    AVStream *st = FUNC2(s, NULL);

    FUNC9(pb, 3); // "FSB"
    version = FUNC3(pb) - '0';
    if (version != 4 && version != 3) {
        FUNC11(s, "version %d", version);
        return AVERROR_PATCHWELCOME;
    }

    FUNC9(pb, 4);

    if (!st)
        return FUNC0(ENOMEM);
    par = st->codecpar;
    par->codec_type  = AVMEDIA_TYPE_AUDIO;
    par->codec_tag   = 0;

    if (version == 3) {
        offset = FUNC7(pb) + 0x18;
        FUNC9(pb, 44);
        st->duration = FUNC7(pb);
        FUNC9(pb, 12);
        format = FUNC7(pb);
        par->sample_rate = FUNC7(pb);
        if (par->sample_rate <= 0)
            return AVERROR_INVALIDDATA;
        FUNC9(pb, 6);
        par->channels    = FUNC6(pb);
        if (!par->channels)
            return AVERROR_INVALIDDATA;

        if (format & 0x00000100) {
            par->codec_id    = AV_CODEC_ID_PCM_S16LE;
            par->block_align = 4096 * par->channels;
        } else if (format & 0x00400000) {
            par->bits_per_coded_sample = 4;
            par->codec_id    = AV_CODEC_ID_ADPCM_IMA_WAV;
            par->block_align = 36 * par->channels;
        } else if (format & 0x00800000) {
            par->codec_id    = AV_CODEC_ID_ADPCM_PSX;
            par->block_align = 16 * par->channels;
        } else if (format & 0x02000000) {
            par->codec_id    = AV_CODEC_ID_ADPCM_THP;
            par->block_align = 8 * par->channels;
            if (par->channels > INT_MAX / 32)
                return AVERROR_INVALIDDATA;
            FUNC13(par, 32 * par->channels);
            if (!par->extradata)
                return FUNC0(ENOMEM);
            FUNC8(pb, 0x68, SEEK_SET);
            for (c = 0; c < par->channels; c++) {
                FUNC5(pb, par->extradata + 32 * c, 32);
                FUNC9(pb, 14);
            }
        } else {
            FUNC11(s, "format 0x%X", format);
            return AVERROR_PATCHWELCOME;
        }
    } else if (version == 4) {
        offset = FUNC7(pb) + 0x30;
        FUNC9(pb, 80);
        st->duration = FUNC7(pb);

        format = FUNC4(pb);
        switch(format) {
        case 0x40001001:
        case 0x00001005:
        case 0x40001081:
        case 0x40200001:
            par->codec_id = AV_CODEC_ID_XMA2;
            break;
        case 0x40000802:
            par->codec_id = AV_CODEC_ID_ADPCM_THP;
            break;
        default:
            FUNC11(s, "format 0x%X", format);
            return AVERROR_PATCHWELCOME;
        }

        par->sample_rate = FUNC7(pb);
        if (par->sample_rate <= 0)
            return AVERROR_INVALIDDATA;
        FUNC9(pb, 6);

        par->channels    = FUNC6(pb);
        if (!par->channels)
            return AVERROR_INVALIDDATA;

        switch (par->codec_id) {
        case AV_CODEC_ID_XMA2:
            FUNC13(par, 34);
            if (!par->extradata)
                return FUNC0(ENOMEM);
            FUNC14(par->extradata, 0, 34);
            par->block_align = 2048;
            break;
        case AV_CODEC_ID_ADPCM_THP:
            if (par->channels > INT_MAX / 32)
                return AVERROR_INVALIDDATA;
            FUNC13(par, 32 * par->channels);
            if (!par->extradata)
                return FUNC0(ENOMEM);
            FUNC8(pb, 0x80, SEEK_SET);
            for (c = 0; c < par->channels; c++) {
                FUNC5(pb, par->extradata + 32 * c, 32);
                FUNC9(pb, 14);
            }
            par->block_align = 8 * par->channels;
            break;
        }
    } else {
        FUNC1(0);
    }

    FUNC9(pb, offset - FUNC10(pb));
    s->internal->data_offset = FUNC10(pb);

    FUNC12(st, 64, 1, par->sample_rate);

    return 0;
}