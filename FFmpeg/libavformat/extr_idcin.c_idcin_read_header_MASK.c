#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_20__ {int codec_tag; unsigned int width; unsigned int height; unsigned int channels; unsigned int sample_rate; unsigned int bits_per_coded_sample; unsigned int bit_rate; unsigned int block_align; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  channel_layout; int /*<<< orphan*/  codec_type; } ;
struct TYPE_19__ {TYPE_3__* pb; TYPE_1__* priv_data; } ;
struct TYPE_18__ {int error; scalar_t__ eof_reached; } ;
struct TYPE_17__ {TYPE_7__* codecpar; int /*<<< orphan*/  index; scalar_t__ start_time; } ;
struct TYPE_16__ {int audio_present; unsigned int block_align; unsigned int audio_chunk_size1; unsigned int audio_chunk_size2; int next_chunk_is_video; int /*<<< orphan*/  first_pkt_pos; scalar_t__ current_audio_chunk; int /*<<< orphan*/  audio_stream_index; int /*<<< orphan*/  video_stream_index; } ;
typedef  TYPE_1__ IdcinDemuxContext ;
typedef  TYPE_2__ AVStream ;
typedef  TYPE_3__ AVIOContext ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EOF ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  AV_CH_LAYOUT_MONO ; 
 int /*<<< orphan*/  AV_CH_LAYOUT_STEREO ; 
 int /*<<< orphan*/  AV_CODEC_ID_IDCIN ; 
 int /*<<< orphan*/  AV_CODEC_ID_PCM_S16LE ; 
 int /*<<< orphan*/  AV_CODEC_ID_PCM_U8 ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  HUFFMAN_TABLE_SIZE ; 
 unsigned int IDCIN_FPS ; 
 unsigned int INT_MAX ; 
 scalar_t__ FUNC1 (unsigned int,unsigned int,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_2__* FUNC3 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 unsigned int FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int,int,unsigned int) ; 
 int FUNC7 (TYPE_4__*,TYPE_7__*,TYPE_3__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(AVFormatContext *s)
{
    AVIOContext *pb = s->pb;
    IdcinDemuxContext *idcin = s->priv_data;
    AVStream *st;
    unsigned int width, height;
    unsigned int sample_rate, bytes_per_sample, channels;
    int ret;

    /* get the 5 header parameters */
    width = FUNC4(pb);
    height = FUNC4(pb);
    sample_rate = FUNC4(pb);
    bytes_per_sample = FUNC4(pb);
    channels = FUNC4(pb);

    if (s->pb->eof_reached) {
        FUNC2(s, AV_LOG_ERROR, "incomplete header\n");
        return s->pb->error ? s->pb->error : AVERROR_EOF;
    }

    if (FUNC1(width, height, 0, s) < 0)
        return AVERROR_INVALIDDATA;
    if (sample_rate > 0) {
        if (sample_rate < 14 || sample_rate > INT_MAX) {
            FUNC2(s, AV_LOG_ERROR, "invalid sample rate: %u\n", sample_rate);
            return AVERROR_INVALIDDATA;
        }
        if (bytes_per_sample < 1 || bytes_per_sample > 2) {
            FUNC2(s, AV_LOG_ERROR, "invalid bytes per sample: %u\n",
                   bytes_per_sample);
            return AVERROR_INVALIDDATA;
        }
        if (channels < 1 || channels > 2) {
            FUNC2(s, AV_LOG_ERROR, "invalid channels: %u\n", channels);
            return AVERROR_INVALIDDATA;
        }
        idcin->audio_present = 1;
    } else {
        /* if sample rate is 0, assume no audio */
        idcin->audio_present = 0;
    }

    st = FUNC3(s, NULL);
    if (!st)
        return FUNC0(ENOMEM);
    FUNC6(st, 33, 1, IDCIN_FPS);
    st->start_time = 0;
    idcin->video_stream_index = st->index;
    st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    st->codecpar->codec_id = AV_CODEC_ID_IDCIN;
    st->codecpar->codec_tag = 0;  /* no fourcc */
    st->codecpar->width = width;
    st->codecpar->height = height;

    /* load up the Huffman tables into extradata */
    if ((ret = FUNC7(s, st->codecpar, pb, HUFFMAN_TABLE_SIZE)) < 0)
        return ret;

    if (idcin->audio_present) {
        idcin->audio_present = 1;
        st = FUNC3(s, NULL);
        if (!st)
            return FUNC0(ENOMEM);
        FUNC6(st, 63, 1, sample_rate);
        st->start_time = 0;
        idcin->audio_stream_index = st->index;
        st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
        st->codecpar->codec_tag = 1;
        st->codecpar->channels = channels;
        st->codecpar->channel_layout = channels > 1 ? AV_CH_LAYOUT_STEREO :
                                                      AV_CH_LAYOUT_MONO;
        st->codecpar->sample_rate = sample_rate;
        st->codecpar->bits_per_coded_sample = bytes_per_sample * 8;
        st->codecpar->bit_rate = sample_rate * bytes_per_sample * 8 * channels;
        st->codecpar->block_align = idcin->block_align = bytes_per_sample * channels;
        if (bytes_per_sample == 1)
            st->codecpar->codec_id = AV_CODEC_ID_PCM_U8;
        else
            st->codecpar->codec_id = AV_CODEC_ID_PCM_S16LE;

        if (sample_rate % 14 != 0) {
            idcin->audio_chunk_size1 = (sample_rate / 14) *
            bytes_per_sample * channels;
            idcin->audio_chunk_size2 = (sample_rate / 14 + 1) *
                bytes_per_sample * channels;
        } else {
            idcin->audio_chunk_size1 = idcin->audio_chunk_size2 =
                (sample_rate / 14) * bytes_per_sample * channels;
        }
        idcin->current_audio_chunk = 0;
    }

    idcin->next_chunk_is_video = 1;
    idcin->first_pkt_pos = FUNC5(s->pb);

    return 0;
}