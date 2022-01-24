#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint64_t ;
typedef  int int64_t ;
struct TYPE_12__ {int block_duration; } ;
struct TYPE_11__ {int channels; int bits_per_coded_sample; int sample_rate; int codec_id; int block_align; int bit_rate; int /*<<< orphan*/  codec_tag; int /*<<< orphan*/  codec_type; } ;
struct TYPE_10__ {TYPE_4__* priv_data; TYPE_1__** streams; int /*<<< orphan*/ * pb; } ;
struct TYPE_9__ {TYPE_3__* codecpar; } ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;
typedef  TYPE_3__ AVCodecParameters ;
typedef  TYPE_4__ AIFFInputContext ;

/* Variables and functions */
 unsigned int AIFF ; 
 unsigned int AIFF_C_VERSION1 ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
#define  AV_CODEC_ID_ADPCM_G722 140 
#define  AV_CODEC_ID_ADPCM_G726LE 139 
#define  AV_CODEC_ID_ADPCM_IMA_QT 138 
#define  AV_CODEC_ID_ADPCM_IMA_WS 137 
#define  AV_CODEC_ID_GSM 136 
#define  AV_CODEC_ID_MACE3 135 
#define  AV_CODEC_ID_MACE6 134 
 int AV_CODEC_ID_NONE ; 
#define  AV_CODEC_ID_PCM_ALAW 133 
#define  AV_CODEC_ID_PCM_F32BE 132 
#define  AV_CODEC_ID_PCM_F64BE 131 
#define  AV_CODEC_ID_PCM_MULAW 130 
 int AV_CODEC_ID_PCM_S16BE ; 
#define  AV_CODEC_ID_PCM_S16LE 129 
#define  AV_CODEC_ID_SDX2_DPCM 128 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_3__*,int) ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,char*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ff_codec_aiff_tags ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(AVFormatContext *s, int size,
                                    unsigned version)
{
    AVIOContext *pb        = s->pb;
    AVCodecParameters *par = s->streams[0]->codecpar;
    AIFFInputContext *aiff = s->priv_data;
    int exp;
    uint64_t val;
    int sample_rate;
    unsigned int num_frames;

    if (size & 1)
        size++;
    par->codec_type = AVMEDIA_TYPE_AUDIO;
    par->channels = FUNC5(pb);
    num_frames = FUNC6(pb);
    par->bits_per_coded_sample = FUNC5(pb);

    exp = FUNC5(pb) - 16383 - 63;
    val = FUNC7(pb);
    if (exp <-63 || exp >63) {
        FUNC4(s, AV_LOG_ERROR, "exp %d is out of range\n", exp);
        return AVERROR_INVALIDDATA;
    }
    if (exp >= 0)
        sample_rate = val << exp;
    else
        sample_rate = (val + (1ULL<<(-exp-1))) >> -exp;
    par->sample_rate = sample_rate;
    size -= 18;

    /* get codec id for AIFF-C */
    if (size < 4) {
        version = AIFF;
    } else if (version == AIFF_C_VERSION1) {
        par->codec_tag = FUNC8(pb);
        par->codec_id  = FUNC11(ff_codec_aiff_tags, par->codec_tag);
        if (par->codec_id == AV_CODEC_ID_NONE)
            FUNC10(s, "unknown or unsupported codec tag: %s",
                                  FUNC1(par->codec_tag));
        size -= 4;
    }

    if (version != AIFF_C_VERSION1 || par->codec_id == AV_CODEC_ID_PCM_S16BE) {
        par->codec_id = FUNC0(par->bits_per_coded_sample);
        par->bits_per_coded_sample = FUNC3(par->codec_id);
        aiff->block_duration = 1;
    } else {
        switch (par->codec_id) {
        case AV_CODEC_ID_PCM_F32BE:
        case AV_CODEC_ID_PCM_F64BE:
        case AV_CODEC_ID_PCM_S16LE:
        case AV_CODEC_ID_PCM_ALAW:
        case AV_CODEC_ID_PCM_MULAW:
            aiff->block_duration = 1;
            break;
        case AV_CODEC_ID_ADPCM_IMA_QT:
            par->block_align = 34 * par->channels;
            break;
        case AV_CODEC_ID_MACE3:
            par->block_align = 2 * par->channels;
            break;
        case AV_CODEC_ID_ADPCM_G726LE:
            par->bits_per_coded_sample = 5;
        case AV_CODEC_ID_ADPCM_IMA_WS:
        case AV_CODEC_ID_ADPCM_G722:
        case AV_CODEC_ID_MACE6:
        case AV_CODEC_ID_SDX2_DPCM:
            par->block_align = 1 * par->channels;
            break;
        case AV_CODEC_ID_GSM:
            par->block_align = 33;
            break;
        default:
            aiff->block_duration = 1;
            break;
        }
        if (par->block_align > 0)
            aiff->block_duration = FUNC2(par,
                                                                par->block_align);
    }

    /* Block align needs to be computed in all cases, as the definition
     * is specific to applications -> here we use the WAVE format definition */
    if (!par->block_align)
        par->block_align = (FUNC3(par->codec_id) * par->channels) >> 3;

    if (aiff->block_duration) {
        par->bit_rate = (int64_t)par->sample_rate * (par->block_align << 3) /
                        aiff->block_duration;
    }

    /* Chunk is over */
    if (size)
        FUNC9(pb, size);

    return num_frames;
}