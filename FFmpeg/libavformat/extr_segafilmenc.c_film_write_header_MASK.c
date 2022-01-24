#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int int8_t ;
typedef  int int64_t ;
struct TYPE_16__ {TYPE_4__** streams; TYPE_3__* priv_data; int /*<<< orphan*/ * pb; } ;
struct TYPE_15__ {int /*<<< orphan*/  time_base; TYPE_1__* codecpar; } ;
struct TYPE_14__ {int packet_count; int audio_index; int video_index; TYPE_2__* start; } ;
struct TYPE_13__ {struct TYPE_13__* next; } ;
struct TYPE_12__ {int codec_id; scalar_t__ format; int height; int width; int channels; int bits_per_coded_sample; int /*<<< orphan*/  sample_rate; } ;
typedef  TYPE_2__ FILMPacket ;
typedef  TYPE_3__ FILMOutputContext ;
typedef  TYPE_4__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_5__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  AV_CODEC_ID_CINEPAK 129 
#define  AV_CODEC_ID_RAWVIDEO 128 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ AV_PIX_FMT_RGB24 ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,TYPE_2__*) ; 
 int FUNC12 (int) ; 
 int FUNC13 (TYPE_5__*,int) ; 

__attribute__((used)) static int FUNC14(AVFormatContext *format_context)
{
    int ret = 0;
    int64_t sample_table_size, stabsize, headersize;
    int8_t audio_codec;
    AVIOContext *pb = format_context->pb;
    FILMOutputContext *film = format_context->priv_data;
    FILMPacket *prev, *packet;
    AVStream *audio = NULL;
    AVStream *video = NULL;

    /* Calculate how much we need to reserve for the header;
     * this is the amount the rest of the data will be shifted up by. */
    sample_table_size = film->packet_count * 16;
    stabsize = 16 + sample_table_size;
    headersize = 16 + /* FILM header base */
                 32 + /* FDSC chunk */
                 stabsize;

    ret = FUNC13(format_context, headersize);
    if (ret < 0)
        return ret;
    /* Seek back to the beginning to start writing the header now */
    FUNC6(pb, 0, SEEK_SET);

    if (film->audio_index > -1)
        audio = format_context->streams[film->audio_index];
    if (film->video_index > -1)
        video = format_context->streams[film->video_index];

    if (audio != NULL) {
        audio_codec = FUNC12(audio->codecpar->codec_id);
        if (audio_codec < 0) {
            FUNC3(format_context, AV_LOG_ERROR, "Incompatible audio stream format.\n");
            return FUNC0(EINVAL);
        }
    }

    if (video->codecpar->format != AV_PIX_FMT_RGB24) {
        FUNC3(format_context, AV_LOG_ERROR, "Pixel format must be rgb24.\n");
        return FUNC0(EINVAL);
    }

    /* First, write the FILM header; this is very simple */

    FUNC10(pb, "FILM");
    FUNC9(pb, 48 + stabsize);
    /* This seems to be okay to hardcode, since this muxer targets 1.09 features;
     * videos produced by this muxer are readable by 1.08 and lower players. */
    FUNC10(pb, "1.09");
    /* I have no idea what this field does, might be reserved */
    FUNC9(pb, 0);

    /* Next write the FDSC (file description) chunk */
    FUNC10(pb, "FDSC");
    FUNC9(pb, 0x20); /* Size of FDSC chunk */

    /* The only two supported codecs; raw video is rare */
    switch (video->codecpar->codec_id) {
    case AV_CODEC_ID_CINEPAK:
        FUNC10(pb, "cvid");
        break;
    case AV_CODEC_ID_RAWVIDEO:
        FUNC10(pb, "raw ");
        break;
    default:
        FUNC3(format_context, AV_LOG_ERROR, "Incompatible video stream format.\n");
        return FUNC0(EINVAL);
    }

    FUNC9(pb, video->codecpar->height);
    FUNC9(pb, video->codecpar->width);
    FUNC7(pb, 24); /* Bits per pixel - observed to always be 24 */

    if (audio != NULL) {
        FUNC7(pb, audio->codecpar->channels); /* Audio channels */
        FUNC7(pb, audio->codecpar->bits_per_coded_sample); /* Audio bit depth */
        FUNC7(pb, audio_codec); /* Compression - 0 is PCM, 2 is ADX */
        FUNC8(pb, audio->codecpar->sample_rate); /* Audio sampling rate */
    } else {
        /* Set all these fields to 0 if there's no audio */
        FUNC7(pb, 0);
        FUNC7(pb, 0);
        FUNC7(pb, 0);
        FUNC8(pb, 0);
    }

    /* I have no idea what this pair of fields does either, might be reserved */
    FUNC9(pb, 0);
    FUNC8(pb, 0);

    /* Finally, write the STAB (sample table) chunk */
    FUNC10(pb, "STAB");
    FUNC9(pb, 16 + (film->packet_count * 16));
    /* Framerate base frequency. Here we're assuming that the frame rate is even.
     * In real world Sega FILM files, there are usually a couple of approaches:
     * a) framerate base frequency is the same as the framerate, and ticks
     *    increment by 1 every frame, or
     * b) framerate base frequency is a much larger number, and ticks
     *    increment by larger steps every frame.
     * The latter occurs even in cases where the frame rate is even; for example, in
     * Lunar: Silver Star Story, the base frequency is 600 and each frame, the ticks
     * are incremented by 25 for an evenly spaced framerate of 24fps. */
    FUNC9(pb, FUNC4(FUNC2(video->time_base)));

    FUNC9(pb, film->packet_count);

    FUNC5(pb);

    /* Finally, write out each packet's data to the header */
    packet = film->start;
    while (packet != NULL) {
        FUNC11(format_context, packet);
        prev = packet;
        packet = packet->next;
        FUNC1(&prev);
    }

    return 0;
}