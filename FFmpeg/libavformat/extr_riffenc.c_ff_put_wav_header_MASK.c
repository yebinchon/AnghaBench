#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int int64_t ;
struct TYPE_8__ {int codec_tag; int block_align; int channels; int channel_layout; int sample_rate; scalar_t__ codec_id; int bits_per_coded_sample; int bit_rate; int extradata_size; int /*<<< orphan*/ * extradata; } ;
struct TYPE_7__ {scalar_t__ strict_std_compliance; } ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_1__ AVFormatContext ;
typedef  TYPE_2__ AVCodecParameters ;

/* Variables and functions */
 int AV_CH_LAYOUT_MONO ; 
 int AV_CH_LAYOUT_STEREO ; 
 scalar_t__ AV_CODEC_ID_AAC ; 
 scalar_t__ AV_CODEC_ID_AC3 ; 
 scalar_t__ AV_CODEC_ID_ADPCM_IMA_WAV ; 
 scalar_t__ AV_CODEC_ID_ATRAC3 ; 
 scalar_t__ AV_CODEC_ID_EAC3 ; 
 scalar_t__ AV_CODEC_ID_G723_1 ; 
 scalar_t__ AV_CODEC_ID_GSM_MS ; 
 scalar_t__ AV_CODEC_ID_MP2 ; 
 scalar_t__ AV_CODEC_ID_MP3 ; 
 scalar_t__ AV_CODEC_ID_PCM_F32LE ; 
 scalar_t__ AV_CODEC_ID_PCM_F64LE ; 
 scalar_t__ AV_CODEC_ID_PCM_S16LE ; 
 scalar_t__ AV_CODEC_ID_PCM_S24LE ; 
 scalar_t__ AV_CODEC_ID_PCM_S32LE ; 
 scalar_t__ AV_CODEC_ID_PCM_U8 ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 scalar_t__ FF_COMPLIANCE_NORMAL ; 
 int FF_PUT_WAV_HEADER_FORCE_WAVEFORMATEX ; 
 int FF_PUT_WAV_HEADER_SKIP_CHANNELMASK ; 
 int FUNC0 (int,int) ; 
 int FUNC1 (TYPE_2__*,int) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  ff_codec_wav_guids ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC13(AVFormatContext *s, AVIOContext *pb,
                      AVCodecParameters *par, int flags)
{
    int bps, blkalign, bytespersec, frame_size;
    int hdrsize;
    int64_t hdrstart = FUNC4(pb);
    int waveformatextensible;
    uint8_t temp[256];
    uint8_t *riff_extradata       = temp;
    uint8_t *riff_extradata_start = temp;

    if (!par->codec_tag || par->codec_tag > 0xffff)
        return -1;

    /* We use the known constant frame size for the codec if known, otherwise
     * fall back on using AVCodecContext.frame_size, which is not as reliable
     * for indicating packet duration. */
    frame_size = FUNC1(par, par->block_align);

    waveformatextensible = (par->channels > 2 && par->channel_layout) ||
                           par->channels == 1 && par->channel_layout && par->channel_layout != AV_CH_LAYOUT_MONO ||
                           par->channels == 2 && par->channel_layout && par->channel_layout != AV_CH_LAYOUT_STEREO ||
                           par->sample_rate > 48000 ||
                           par->codec_id == AV_CODEC_ID_EAC3 ||
                           FUNC2(par->codec_id) > 16;

    if (waveformatextensible)
        FUNC6(pb, 0xfffe);
    else
        FUNC6(pb, par->codec_tag);

    FUNC6(pb, par->channels);
    FUNC7(pb, par->sample_rate);
    if (par->codec_id == AV_CODEC_ID_ATRAC3 ||
        par->codec_id == AV_CODEC_ID_G723_1 ||
        par->codec_id == AV_CODEC_ID_MP2    ||
        par->codec_id == AV_CODEC_ID_MP3    ||
        par->codec_id == AV_CODEC_ID_GSM_MS) {
        bps = 0;
    } else {
        if (!(bps = FUNC2(par->codec_id))) {
            if (par->bits_per_coded_sample)
                bps = par->bits_per_coded_sample;
            else
                bps = 16;  // default to 16
        }
    }
    if (bps != par->bits_per_coded_sample && par->bits_per_coded_sample) {
        FUNC3(s, AV_LOG_WARNING,
               "requested bits_per_coded_sample (%d) "
               "and actually stored (%d) differ\n",
               par->bits_per_coded_sample, bps);
    }

    if (par->codec_id == AV_CODEC_ID_MP2) {
        blkalign = (144 * par->bit_rate - 1)/par->sample_rate + 1;
    } else if (par->codec_id == AV_CODEC_ID_MP3) {
        blkalign = 576 * (par->sample_rate <= (24000 + 32000)/2 ? 1 : 2);
    } else if (par->codec_id == AV_CODEC_ID_AC3) {
        blkalign = 3840;                /* maximum bytes per frame */
    } else if (par->codec_id == AV_CODEC_ID_AAC) {
        blkalign = 768 * par->channels; /* maximum bytes per frame */
    } else if (par->codec_id == AV_CODEC_ID_G723_1) {
        blkalign = 24;
    } else if (par->block_align != 0) { /* specified by the codec */
        blkalign = par->block_align;
    } else
        blkalign = bps * par->channels / FUNC0(8, bps);
    if (par->codec_id == AV_CODEC_ID_PCM_U8 ||
        par->codec_id == AV_CODEC_ID_PCM_S24LE ||
        par->codec_id == AV_CODEC_ID_PCM_S32LE ||
        par->codec_id == AV_CODEC_ID_PCM_F32LE ||
        par->codec_id == AV_CODEC_ID_PCM_F64LE ||
        par->codec_id == AV_CODEC_ID_PCM_S16LE) {
        bytespersec = par->sample_rate * blkalign;
    } else if (par->codec_id == AV_CODEC_ID_G723_1) {
        bytespersec = 800;
    } else {
        bytespersec = par->bit_rate / 8;
    }
    FUNC7(pb, bytespersec); /* bytes per second */
    FUNC6(pb, blkalign);    /* block align */
    FUNC6(pb, bps);         /* bits per sample */
    if (par->codec_id == AV_CODEC_ID_MP3) {
        FUNC9(&riff_extradata, 1);    /* wID */
        FUNC10(&riff_extradata, 2);    /* fdwFlags */
        FUNC9(&riff_extradata, 1152); /* nBlockSize */
        FUNC9(&riff_extradata, 1);    /* nFramesPerBlock */
        FUNC9(&riff_extradata, 1393); /* nCodecDelay */
    } else if (par->codec_id == AV_CODEC_ID_MP2) {
        /* fwHeadLayer */
        FUNC9(&riff_extradata, 2);
        /* dwHeadBitrate */
        FUNC10(&riff_extradata, par->bit_rate);
        /* fwHeadMode */
        FUNC9(&riff_extradata, par->channels == 2 ? 1 : 8);
        /* fwHeadModeExt */
        FUNC9(&riff_extradata, 0);
        /* wHeadEmphasis */
        FUNC9(&riff_extradata, 1);
        /* fwHeadFlags */
        FUNC9(&riff_extradata, 16);
        /* dwPTSLow */
        FUNC10(&riff_extradata, 0);
        /* dwPTSHigh */
        FUNC10(&riff_extradata, 0);
    } else if (par->codec_id == AV_CODEC_ID_G723_1) {
        FUNC10(&riff_extradata, 0x9ace0002); /* extradata needed for msacm g723.1 codec */
        FUNC10(&riff_extradata, 0xaea2f732);
        FUNC9(&riff_extradata, 0xacde);
    } else if (par->codec_id == AV_CODEC_ID_GSM_MS ||
               par->codec_id == AV_CODEC_ID_ADPCM_IMA_WAV) {
        /* wSamplesPerBlock */
        FUNC9(&riff_extradata, frame_size);
    } else if (par->extradata_size) {
        riff_extradata_start = par->extradata;
        riff_extradata       = par->extradata + par->extradata_size;
    }
    /* write WAVEFORMATEXTENSIBLE extensions */
    if (waveformatextensible) {
        int write_channel_mask = !(flags & FF_PUT_WAV_HEADER_SKIP_CHANNELMASK) &&
                                 (s->strict_std_compliance < FF_COMPLIANCE_NORMAL ||
                                  par->channel_layout < 0x40000);
        /* 22 is WAVEFORMATEXTENSIBLE size */
        FUNC6(pb, riff_extradata - riff_extradata_start + 22);
        /* ValidBitsPerSample || SamplesPerBlock || Reserved */
        FUNC6(pb, bps);
        /* dwChannelMask */
        FUNC7(pb, write_channel_mask ? par->channel_layout : 0);
        /* GUID + next 3 */
        if (par->codec_id == AV_CODEC_ID_EAC3) {
            FUNC12(pb, FUNC11(par->codec_id, ff_codec_wav_guids));
        } else {
        FUNC7(pb, par->codec_tag);
        FUNC7(pb, 0x00100000);
        FUNC7(pb, 0xAA000080);
        FUNC7(pb, 0x719B3800);
        }
    } else if ((flags & FF_PUT_WAV_HEADER_FORCE_WAVEFORMATEX) ||
               par->codec_tag != 0x0001 /* PCM */ ||
               riff_extradata - riff_extradata_start) {
        /* WAVEFORMATEX */
        FUNC6(pb, riff_extradata - riff_extradata_start); /* cbSize */
    } /* else PCMWAVEFORMAT */
    FUNC8(pb, riff_extradata_start, riff_extradata - riff_extradata_start);
    hdrsize = FUNC4(pb) - hdrstart;
    if (hdrsize & 1) {
        hdrsize++;
        FUNC5(pb, 0);
    }

    return hdrsize;
}