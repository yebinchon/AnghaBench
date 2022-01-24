#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int int64_t ;
struct TYPE_12__ {int adpcm; int channels; int sample_rate; int bits; int /*<<< orphan*/  stream_index; scalar_t__ audio_pts; } ;
struct TYPE_11__ {int id; TYPE_1__* codecpar; int /*<<< orphan*/  index; } ;
struct TYPE_10__ {int track_count; TYPE_5__* tracks; } ;
struct TYPE_9__ {int channels; int sample_rate; int bits_per_coded_sample; int bit_rate; int block_align; int /*<<< orphan*/  codec_id; scalar_t__ codec_tag; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_2__ FourxmDemuxContext ;
typedef  int /*<<< orphan*/  AudioTrack ;
typedef  TYPE_3__ AVStream ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AV_CODEC_ID_ADPCM_4XM ; 
 int /*<<< orphan*/  AV_CODEC_ID_PCM_S16LE ; 
 int /*<<< orphan*/  AV_CODEC_ID_PCM_U8 ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FF_SANE_NB_CHANNELS ; 
 int INT64_MAX ; 
 int INT_MAX ; 
 int UINT_MAX ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC3 (TYPE_5__**,int,int) ; 
 TYPE_3__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int strk_SIZE ; 

__attribute__((used)) static int FUNC7(AVFormatContext *s,
                      FourxmDemuxContext *fourxm, uint8_t *buf, int size,
                      int left)
{
    AVStream *st;
    int track;
    /* check that there is enough data */
    if (size != strk_SIZE || left < size + 8)
        return AVERROR_INVALIDDATA;

    track = FUNC1(buf + 8);
    if ((unsigned)track >= UINT_MAX / sizeof(AudioTrack) - 1) {
        FUNC2(s, AV_LOG_ERROR, "current_track too large\n");
        return AVERROR_INVALIDDATA;
    }

    if (track + 1 > fourxm->track_count) {
        if (FUNC3(&fourxm->tracks, track + 1, sizeof(AudioTrack)))
            return FUNC0(ENOMEM);
        FUNC6(&fourxm->tracks[fourxm->track_count], 0,
               sizeof(AudioTrack) * (track + 1 - fourxm->track_count));
        fourxm->track_count = track + 1;
    }
    fourxm->tracks[track].adpcm       = FUNC1(buf + 12);
    fourxm->tracks[track].channels    = FUNC1(buf + 36);
    fourxm->tracks[track].sample_rate = FUNC1(buf + 40);
    fourxm->tracks[track].bits        = FUNC1(buf + 44);
    fourxm->tracks[track].audio_pts   = 0;

    if (fourxm->tracks[track].channels    <= 0 ||
        fourxm->tracks[track].channels     > FF_SANE_NB_CHANNELS ||
        fourxm->tracks[track].sample_rate <= 0 ||
        fourxm->tracks[track].bits        <= 0 ||
        fourxm->tracks[track].bits         > INT_MAX / FF_SANE_NB_CHANNELS) {
        FUNC2(s, AV_LOG_ERROR, "audio header invalid\n");
        return AVERROR_INVALIDDATA;
    }
    if (!fourxm->tracks[track].adpcm && fourxm->tracks[track].bits<8) {
        FUNC2(s, AV_LOG_ERROR, "bits unspecified for non ADPCM\n");
        return AVERROR_INVALIDDATA;
    }

    if (fourxm->tracks[track].sample_rate > INT64_MAX / fourxm->tracks[track].bits / fourxm->tracks[track].channels) {
        FUNC2(s, AV_LOG_ERROR, "Overflow during bit rate calculation %d * %d * %d\n",
               fourxm->tracks[track].sample_rate, fourxm->tracks[track].bits, fourxm->tracks[track].channels);
        return AVERROR_INVALIDDATA;
    }

    /* allocate a new AVStream */
    st = FUNC4(s, NULL);
    if (!st)
        return FUNC0(ENOMEM);

    st->id = track;
    FUNC5(st, 60, 1, fourxm->tracks[track].sample_rate);

    fourxm->tracks[track].stream_index = st->index;

    st->codecpar->codec_type            = AVMEDIA_TYPE_AUDIO;
    st->codecpar->codec_tag             = 0;
    st->codecpar->channels              = fourxm->tracks[track].channels;
    st->codecpar->sample_rate           = fourxm->tracks[track].sample_rate;
    st->codecpar->bits_per_coded_sample = fourxm->tracks[track].bits;
    st->codecpar->bit_rate              = (int64_t)st->codecpar->channels *
                                          st->codecpar->sample_rate *
                                          st->codecpar->bits_per_coded_sample;
    st->codecpar->block_align           = st->codecpar->channels *
                                          st->codecpar->bits_per_coded_sample;

    if (fourxm->tracks[track].adpcm){
        st->codecpar->codec_id = AV_CODEC_ID_ADPCM_4XM;
    } else if (st->codecpar->bits_per_coded_sample == 8) {
        st->codecpar->codec_id = AV_CODEC_ID_PCM_U8;
    } else
        st->codecpar->codec_id = AV_CODEC_ID_PCM_S16LE;

    return 0;
}