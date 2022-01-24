#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  long long uint64_t ;
struct TYPE_5__ {long long sample_rate; int bits_per_coded_sample; int codec_tag; long long bit_rate; int /*<<< orphan*/  codec_id; void* channels; scalar_t__* extradata; void* block_align; int /*<<< orphan*/  codec_type; } ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  int /*<<< orphan*/  AVFormatContext ;
typedef  TYPE_1__ AVCodecParameters ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int AVERROR_PATCHWELCOME ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AV_CODEC_ID_AAC_LATM ; 
 int /*<<< orphan*/  AV_CODEC_ID_ADPCM_G726 ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int FUNC1 (scalar_t__*) ; 
 long long FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,long long) ; 
 void* FUNC6 (int /*<<< orphan*/ *) ; 
 long long FUNC7 (int /*<<< orphan*/ *) ; 
 void* FUNC8 (int /*<<< orphan*/ *) ; 
 long long FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 (int,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 

int FUNC16(AVFormatContext *s, AVIOContext *pb,
                      AVCodecParameters *par, int size, int big_endian)
{
    int id;
    uint64_t bitrate = 0;

    if (size < 14) {
        FUNC12(s, "wav header size < 14");
        return AVERROR_INVALIDDATA;
    }

    par->codec_type  = AVMEDIA_TYPE_AUDIO;
    if (!big_endian) {
        id                 = FUNC8(pb);
        if (id != 0x0165) {
            par->channels    = FUNC8(pb);
            par->sample_rate = FUNC9(pb);
            bitrate            = FUNC9(pb) * 8LL;
            par->block_align = FUNC8(pb);
        }
    } else {
        id                 = FUNC6(pb);
        par->channels    = FUNC6(pb);
        par->sample_rate = FUNC7(pb);
        bitrate            = FUNC7(pb) * 8LL;
        par->block_align = FUNC6(pb);
    }
    if (size == 14) {  /* We're dealing with plain vanilla WAVEFORMAT */
        par->bits_per_coded_sample = 8;
    } else {
        if (!big_endian) {
            par->bits_per_coded_sample = FUNC8(pb);
        } else {
            par->bits_per_coded_sample = FUNC6(pb);
        }
    }
    if (id == 0xFFFE) {
        par->codec_tag = 0;
    } else {
        par->codec_tag = id;
        par->codec_id  = FUNC14(id,
                                             par->bits_per_coded_sample);
    }
    if (size >= 18 && id != 0x0165) {  /* We're obviously dealing with WAVEFORMATEX */
        int cbSize = FUNC8(pb); /* cbSize */
        if (big_endian) {
            FUNC11(s, "WAVEFORMATEX support for RIFX files");
            return AVERROR_PATCHWELCOME;
        }
        size  -= 18;
        cbSize = FUNC3(size, cbSize);
        if (cbSize >= 22 && id == 0xfffe) { /* WAVEFORMATEXTENSIBLE */
            FUNC15(s, pb, par);
            cbSize -= 22;
            size   -= 22;
        }
        if (cbSize > 0) {
            FUNC4(&par->extradata);
            if (FUNC13(s, par, pb, cbSize) < 0)
                return FUNC0(ENOMEM);
            size -= cbSize;
        }

        /* It is possible for the chunk to contain garbage at the end */
        if (size > 0)
            FUNC10(pb, size);
    } else if (id == 0x0165 && size >= 32) {
        int nb_streams, i;

        size -= 4;
        FUNC4(&par->extradata);
        if (FUNC13(s, par, pb, size) < 0)
            return FUNC0(ENOMEM);
        nb_streams         = FUNC1(par->extradata + 4);
        par->sample_rate   = FUNC2(par->extradata + 12);
        par->channels      = 0;
        bitrate            = 0;
        if (size < 8 + nb_streams * 20)
            return AVERROR_INVALIDDATA;
        for (i = 0; i < nb_streams; i++)
            par->channels += par->extradata[8 + i * 20 + 17];
    }

    par->bit_rate = bitrate;

    if (par->sample_rate <= 0) {
        FUNC5(s, AV_LOG_ERROR,
               "Invalid sample rate: %d\n", par->sample_rate);
        return AVERROR_INVALIDDATA;
    }
    if (par->codec_id == AV_CODEC_ID_AAC_LATM) {
        /* Channels and sample_rate values are those prior to applying SBR
         * and/or PS. */
        par->channels    = 0;
        par->sample_rate = 0;
    }
    /* override bits_per_coded_sample for G.726 */
    if (par->codec_id == AV_CODEC_ID_ADPCM_G726 && par->sample_rate)
        par->bits_per_coded_sample = par->bit_rate / par->sample_rate;

    return 0;
}