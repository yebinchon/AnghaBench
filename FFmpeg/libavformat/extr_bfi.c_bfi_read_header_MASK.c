#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
struct TYPE_14__ {int sample_rate; int channels; int bits_per_coded_sample; int bit_rate; int /*<<< orphan*/  channel_layout; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; int /*<<< orphan*/  format; void* height; void* width; } ;
struct TYPE_13__ {int /*<<< orphan*/ * pb; TYPE_1__* priv_data; } ;
struct TYPE_12__ {TYPE_5__* codecpar; void* duration; void* nb_frames; } ;
struct TYPE_11__ {void* nframes; } ;
typedef  TYPE_1__ BFIContext ;
typedef  TYPE_2__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  AV_CH_LAYOUT_MONO ; 
 int /*<<< orphan*/  AV_CODEC_ID_BFI ; 
 int /*<<< orphan*/  AV_CODEC_ID_PCM_U8 ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_PIX_FMT_PAL8 ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,char*,int) ; 
 TYPE_2__* FUNC2 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int,int,int) ; 
 int FUNC7 (TYPE_3__*,TYPE_5__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC8(AVFormatContext * s)
{
    BFIContext *bfi = s->priv_data;
    AVIOContext *pb = s->pb;
    AVStream *vstream;
    AVStream *astream;
    int ret, fps, chunk_header;

    /* Initialize the video codec... */
    vstream = FUNC2(s, NULL);
    if (!vstream)
        return FUNC0(ENOMEM);

    /* Initialize the audio codec... */
    astream = FUNC2(s, NULL);
    if (!astream)
        return FUNC0(ENOMEM);

    /* Set the total number of frames. */
    FUNC5(pb, 8);
    chunk_header           = FUNC3(pb);
    bfi->nframes           = FUNC3(pb);
    FUNC3(pb);
    FUNC3(pb);
    FUNC3(pb);
    fps                    = FUNC3(pb);
    FUNC5(pb, 12);
    vstream->codecpar->width  = FUNC3(pb);
    vstream->codecpar->height = FUNC3(pb);

    /*Load the palette to extradata */
    FUNC5(pb, 8);
    ret = FUNC7(s, vstream->codecpar, pb, 768);
    if (ret < 0)
        return ret;

    astream->codecpar->sample_rate = FUNC3(pb);
    if (astream->codecpar->sample_rate <= 0) {
        FUNC1(s, AV_LOG_ERROR, "Invalid sample rate %d\n", astream->codecpar->sample_rate);
        return AVERROR_INVALIDDATA;
    }

    /* Set up the video codec... */
    FUNC6(vstream, 32, 1, fps);
    vstream->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    vstream->codecpar->codec_id   = AV_CODEC_ID_BFI;
    vstream->codecpar->format     = AV_PIX_FMT_PAL8;
    vstream->nb_frames            =
    vstream->duration             = bfi->nframes;

    /* Set up the audio codec now... */
    astream->codecpar->codec_type      = AVMEDIA_TYPE_AUDIO;
    astream->codecpar->codec_id        = AV_CODEC_ID_PCM_U8;
    astream->codecpar->channels        = 1;
    astream->codecpar->channel_layout  = AV_CH_LAYOUT_MONO;
    astream->codecpar->bits_per_coded_sample = 8;
    astream->codecpar->bit_rate        =
        (int64_t)astream->codecpar->sample_rate * astream->codecpar->bits_per_coded_sample;
    FUNC4(pb, chunk_header - 3, SEEK_SET);
    FUNC6(astream, 64, 1, astream->codecpar->sample_rate);
    return 0;
}