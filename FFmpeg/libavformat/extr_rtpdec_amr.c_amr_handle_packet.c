
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_9__ {int* data; int size; int stream_index; } ;
struct TYPE_8__ {int index; TYPE_1__* codecpar; } ;
struct TYPE_7__ {scalar_t__ codec_id; int channels; int channel_layout; } ;
typedef int PayloadContext ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVPacket ;
typedef int AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AV_CH_LAYOUT_MONO ;
 scalar_t__ AV_CODEC_ID_AMR_NB ;
 scalar_t__ AV_CODEC_ID_AMR_WB ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 int ENOMEM ;
 int av_log (int *,int ,char*) ;
 scalar_t__ av_new_packet (TYPE_3__*,int) ;
 int* frame_sizes_nb ;
 int* frame_sizes_wb ;
 int memcpy (int*,int const*,int) ;
 int memset (int*,int ,int) ;

__attribute__((used)) static int amr_handle_packet(AVFormatContext *ctx, PayloadContext *data,
                             AVStream *st, AVPacket *pkt, uint32_t *timestamp,
                             const uint8_t *buf, int len, uint16_t seq,
                             int flags)
{
    const uint8_t *frame_sizes = ((void*)0);
    int frames;
    int i;
    const uint8_t *speech_data;
    uint8_t *ptr;

    if (st->codecpar->codec_id == AV_CODEC_ID_AMR_NB) {
        frame_sizes = frame_sizes_nb;
    } else if (st->codecpar->codec_id == AV_CODEC_ID_AMR_WB) {
        frame_sizes = frame_sizes_wb;
    } else {
        av_log(ctx, AV_LOG_ERROR, "Bad codec ID\n");
        return AVERROR_INVALIDDATA;
    }

    if (st->codecpar->channels != 1) {
        av_log(ctx, AV_LOG_ERROR, "Only mono AMR is supported\n");
        return AVERROR_INVALIDDATA;
    }
    st->codecpar->channel_layout = AV_CH_LAYOUT_MONO;
    for (frames = 1; frames < len && (buf[frames] & 0x80); frames++) ;

    if (1 + frames >= len) {

        av_log(ctx, AV_LOG_ERROR, "No speech data found\n");
        return AVERROR_INVALIDDATA;
    }

    speech_data = buf + 1 + frames;


    if (av_new_packet(pkt, len - 1)) {
        av_log(ctx, AV_LOG_ERROR, "Out of memory\n");
        return AVERROR(ENOMEM);
    }
    pkt->stream_index = st->index;
    ptr = pkt->data;

    for (i = 0; i < frames; i++) {
        uint8_t toc = buf[1 + i];
        int frame_size = frame_sizes[(toc >> 3) & 0x0f];

        if (speech_data + frame_size > buf + len) {

            av_log(ctx, AV_LOG_WARNING, "Too little speech data in the RTP packet\n");

            memset(ptr, 0, pkt->data + pkt->size - ptr);
            pkt->size = ptr - pkt->data;
            return 0;
        }


        *ptr++ = toc & 0x7C;


        memcpy(ptr, speech_data, frame_size);
        speech_data += frame_size;
        ptr += frame_size;
    }

    if (speech_data < buf + len) {
        av_log(ctx, AV_LOG_WARNING, "Too much speech data in the RTP packet?\n");

        memset(ptr, 0, pkt->data + pkt->size - ptr);
        pkt->size = ptr - pkt->data;
    }

    return 0;
}
