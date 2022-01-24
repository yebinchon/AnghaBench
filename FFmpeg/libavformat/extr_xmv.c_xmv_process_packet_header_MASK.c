#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  void* uint64_t ;
typedef  size_t uint16_t ;
struct TYPE_11__ {int data_size; int frame_count; int has_extradata; int created; size_t stream_index; int data_offset; int /*<<< orphan*/  extradata; scalar_t__ current_frame; } ;
struct TYPE_12__ {int audio_track_count; int current_stream; int stream_count; TYPE_1__ video; TYPE_3__* audio; int /*<<< orphan*/  video_duration; int /*<<< orphan*/  video_height; int /*<<< orphan*/  video_width; int /*<<< orphan*/  next_packet_size; } ;
typedef  TYPE_2__ XMVDemuxContext ;
struct TYPE_13__ {int created; int channels; int sample_rate; int block_samples; size_t stream_index; int data_size; int frame_size; int block_align; void* data_offset; int /*<<< orphan*/  bit_rate; int /*<<< orphan*/  bits_per_sample; int /*<<< orphan*/  compression; int /*<<< orphan*/  codec_id; } ;
typedef  TYPE_3__ XMVAudioPacket ;
struct TYPE_16__ {int channels; int sample_rate; int block_align; int extradata_size; int /*<<< orphan*/  extradata; int /*<<< orphan*/  bit_rate; int /*<<< orphan*/  bits_per_coded_sample; int /*<<< orphan*/  codec_tag; int /*<<< orphan*/  codec_id; int /*<<< orphan*/  codec_type; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_15__ {size_t nb_streams; TYPE_4__** streams; int /*<<< orphan*/ * pb; TYPE_2__* priv_data; } ;
struct TYPE_14__ {size_t index; TYPE_7__* codecpar; int /*<<< orphan*/  duration; } ;
typedef  TYPE_4__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_5__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_AUDIO ; 
 int /*<<< orphan*/  AVMEDIA_TYPE_VIDEO ; 
 int /*<<< orphan*/  AV_CODEC_ID_WMV2 ; 
 int FUNC1 (int*) ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC2 (char,char,char,char) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_4__* FUNC5 (TYPE_5__*,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 void* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int,int,int) ; 
 int FUNC10 (TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC13(AVFormatContext *s)
{
    XMVDemuxContext *xmv = s->priv_data;
    AVIOContext     *pb  = s->pb;
    int ret;

    uint8_t  data[8];
    uint16_t audio_track;
    uint64_t data_offset;

    /* Next packet size */
    xmv->next_packet_size = FUNC7(pb);

    /* Packet video header */

    if (FUNC6(pb, data, 8) != 8)
        return FUNC0(EIO);

    xmv->video.data_size     = FUNC1(data) & 0x007FFFFF;

    xmv->video.current_frame = 0;
    xmv->video.frame_count   = (FUNC1(data) >> 23) & 0xFF;

    xmv->video.has_extradata = (data[3] & 0x80) != 0;

    if (!xmv->video.created) {
        AVStream *vst = FUNC5(s, NULL);
        if (!vst)
            return FUNC0(ENOMEM);

        FUNC9(vst, 32, 1, 1000);

        vst->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
        vst->codecpar->codec_id   = AV_CODEC_ID_WMV2;
        vst->codecpar->codec_tag  = FUNC2('W', 'M', 'V', '2');
        vst->codecpar->width      = xmv->video_width;
        vst->codecpar->height     = xmv->video_height;

        vst->duration = xmv->video_duration;

        xmv->video.stream_index = vst->index;

        xmv->video.created = 1;
    }

    /* Adding the audio data sizes and the video data size keeps you 4 bytes
     * short for every audio track. But as playing around with XMV files with
     * ADPCM audio showed, taking the extra 4 bytes from the audio data gives
     * you either completely distorted audio or click (when skipping the
     * remaining 68 bytes of the ADPCM block). Subtracting 4 bytes for every
     * audio track from the video data works at least for the audio. Probably
     * some alignment thing?
     * The video data has (always?) lots of padding, so it should work out...
     */
    xmv->video.data_size -= xmv->audio_track_count * 4;

    xmv->current_stream = 0;
    if (!xmv->video.frame_count) {
        xmv->video.frame_count = 1;
        xmv->current_stream    = xmv->stream_count > 1;
    }

    /* Packet audio header */

    for (audio_track = 0; audio_track < xmv->audio_track_count; audio_track++) {
        XMVAudioPacket *packet = &xmv->audio[audio_track];

        if (FUNC6(pb, data, 4) != 4)
            return FUNC0(EIO);

        if (!packet->created) {
            AVStream *ast = FUNC5(s, NULL);
            if (!ast)
                return FUNC0(ENOMEM);

            ast->codecpar->codec_type            = AVMEDIA_TYPE_AUDIO;
            ast->codecpar->codec_id              = packet->codec_id;
            ast->codecpar->codec_tag             = packet->compression;
            ast->codecpar->channels              = packet->channels;
            ast->codecpar->sample_rate           = packet->sample_rate;
            ast->codecpar->bits_per_coded_sample = packet->bits_per_sample;
            ast->codecpar->bit_rate              = packet->bit_rate;
            ast->codecpar->block_align           = 36 * packet->channels;

            FUNC9(ast, 32, packet->block_samples, packet->sample_rate);

            packet->stream_index = ast->index;

            ast->duration = xmv->video_duration;

            packet->created = 1;
        }

        packet->data_size = FUNC1(data) & 0x007FFFFF;
        if ((packet->data_size == 0) && (audio_track != 0))
            /* This happens when I create an XMV with several identical audio
             * streams. From the size calculations, duplicating the previous
             * stream's size works out, but the track data itself is silent.
             * Maybe this should also redirect the offset to the previous track?
             */
            packet->data_size = xmv->audio[audio_track - 1].data_size;

        /* Carve up the audio data in frame_count slices */
        packet->frame_size  = packet->data_size  / xmv->video.frame_count;
        packet->frame_size -= packet->frame_size % packet->block_align;
    }

    /* Packet data offsets */

    data_offset = FUNC8(pb);

    xmv->video.data_offset = data_offset;
    data_offset += xmv->video.data_size;

    for (audio_track = 0; audio_track < xmv->audio_track_count; audio_track++) {
        xmv->audio[audio_track].data_offset = data_offset;
        data_offset += xmv->audio[audio_track].data_size;
    }

    /* Video frames header */

    /* Read new video extra data */
    if (xmv->video.data_size > 0) {
        if (xmv->video.has_extradata) {
            FUNC12(xmv->video.extradata, pb);

            xmv->video.data_size   -= 4;
            xmv->video.data_offset += 4;

            if (xmv->video.stream_index >= 0) {
                AVStream *vst = s->streams[xmv->video.stream_index];

                FUNC3(xmv->video.stream_index < s->nb_streams);

                if (vst->codecpar->extradata_size < 4) {
                    FUNC4(&vst->codecpar->extradata);

                    if ((ret = FUNC10(vst->codecpar, 4)) < 0)
                        return ret;
                }

                FUNC11(vst->codecpar->extradata, xmv->video.extradata, 4);
            }
        }
    }

    return 0;
}