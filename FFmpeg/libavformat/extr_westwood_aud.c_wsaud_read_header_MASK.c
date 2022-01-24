#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/ * pb; } ;
struct TYPE_10__ {TYPE_1__* codecpar; } ;
struct TYPE_9__ {int bits_per_coded_sample; int bit_rate; int channels; int sample_rate; int /*<<< orphan*/  channel_layout; int /*<<< orphan*/  codec_type; int /*<<< orphan*/  codec_id; } ;
typedef  TYPE_2__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int AUD_HEADER_SIZE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_PATCHWELCOME ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AV_CH_LAYOUT_MONO ; 
 int /*<<< orphan*/  AV_CH_LAYOUT_STEREO ; 
 int /*<<< orphan*/  AV_CODEC_ID_ADPCM_IMA_WS ; 
 int /*<<< orphan*/  AV_CODEC_ID_WESTWOOD_SND1 ; 
 int FUNC1 (unsigned char*) ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 TYPE_2__* FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int,int,int) ; 

__attribute__((used)) static int FUNC6(AVFormatContext *s)
{
    AVIOContext *pb = s->pb;
    AVStream *st;
    unsigned char header[AUD_HEADER_SIZE];
    int sample_rate, channels, codec;

    if (FUNC3(pb, header, AUD_HEADER_SIZE) != AUD_HEADER_SIZE)
        return FUNC0(EIO);

    sample_rate = FUNC1(&header[0]);
    channels    = (header[10] & 0x1) + 1;
    codec       = header[11];

    /* initialize the audio decoder stream */
    st = FUNC2(s, NULL);
    if (!st)
        return FUNC0(ENOMEM);

    switch (codec) {
    case  1:
        if (channels != 1) {
            FUNC4(s, "Stereo WS-SND1");
            return AVERROR_PATCHWELCOME;
        }
        st->codecpar->codec_id = AV_CODEC_ID_WESTWOOD_SND1;
        break;
    case 99:
        st->codecpar->codec_id = AV_CODEC_ID_ADPCM_IMA_WS;
        st->codecpar->bits_per_coded_sample = 4;
        st->codecpar->bit_rate = channels * sample_rate * 4;
        break;
    default:
        FUNC4(s, "Unknown codec: %d", codec);
        return AVERROR_PATCHWELCOME;
    }
    FUNC5(st, 64, 1, sample_rate);
    st->codecpar->codec_type  = AVMEDIA_TYPE_AUDIO;
    st->codecpar->channels    = channels;
    st->codecpar->channel_layout = channels == 1 ? AV_CH_LAYOUT_MONO :
                                                   AV_CH_LAYOUT_STEREO;
    st->codecpar->sample_rate = sample_rate;

    return 0;
}