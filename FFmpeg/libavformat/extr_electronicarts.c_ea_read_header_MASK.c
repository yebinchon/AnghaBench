#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
struct TYPE_15__ {TYPE_2__* priv_data; } ;
struct TYPE_14__ {scalar_t__ start_time; int /*<<< orphan*/  index; TYPE_1__* codecpar; } ;
struct TYPE_13__ {int num_channels; int sample_rate; int bytes; int /*<<< orphan*/  audio_stream_index; scalar_t__ audio_codec; int /*<<< orphan*/  alpha; int /*<<< orphan*/  video; } ;
struct TYPE_12__ {int channels; int sample_rate; int bits_per_coded_sample; int bit_rate; int block_align; scalar_t__ codec_tag; scalar_t__ codec_id; int /*<<< orphan*/  codec_type; } ;
typedef  TYPE_2__ EaDemuxContext ;
typedef  TYPE_3__ AVStream ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 scalar_t__ AV_CODEC_ID_NONE ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ,char*,int) ; 
 TYPE_3__* FUNC2 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int,int,int) ; 
 scalar_t__ FUNC4 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (TYPE_4__*) ; 

__attribute__((used)) static int FUNC6(AVFormatContext *s)
{
    EaDemuxContext *ea = s->priv_data;
    AVStream *st;

    if (FUNC5(s)<=0)
        return FUNC0(EIO);

    if (FUNC4(s, &ea->video) || FUNC4(s, &ea->alpha))
        return FUNC0(ENOMEM);

    if (ea->audio_codec) {
        if (ea->num_channels <= 0 || ea->num_channels > 2) {
            FUNC1(s, AV_LOG_WARNING,
                   "Unsupported number of channels: %d\n", ea->num_channels);
            ea->audio_codec = 0;
            return 1;
        }
        if (ea->sample_rate <= 0) {
            FUNC1(s, AV_LOG_ERROR,
                   "Unsupported sample rate: %d\n", ea->sample_rate);
            ea->audio_codec = 0;
            return 1;
        }
        if (ea->bytes <= 0 || ea->bytes > 2) {
            FUNC1(s, AV_LOG_ERROR,
                   "Invalid number of bytes per sample: %d\n", ea->bytes);
            ea->audio_codec = AV_CODEC_ID_NONE;
            return 1;
        }

        /* initialize the audio decoder stream */
        st = FUNC2(s, NULL);
        if (!st)
            return FUNC0(ENOMEM);
        FUNC3(st, 33, 1, ea->sample_rate);
        st->codecpar->codec_type            = AVMEDIA_TYPE_AUDIO;
        st->codecpar->codec_id              = ea->audio_codec;
        st->codecpar->codec_tag             = 0;   /* no tag */
        st->codecpar->channels              = ea->num_channels;
        st->codecpar->sample_rate           = ea->sample_rate;
        st->codecpar->bits_per_coded_sample = ea->bytes * 8;
        st->codecpar->bit_rate              = (int64_t)st->codecpar->channels *
                                              st->codecpar->sample_rate *
                                              st->codecpar->bits_per_coded_sample / 4;
        st->codecpar->block_align           = st->codecpar->channels *
                                              st->codecpar->bits_per_coded_sample;
        ea->audio_stream_index           = st->index;
        st->start_time                   = 0;
    }

    return 1;
}