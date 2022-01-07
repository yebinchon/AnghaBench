
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint8_t ;
typedef void* uint64_t ;
typedef size_t uint16_t ;
struct TYPE_11__ {int data_size; int frame_count; int has_extradata; int created; size_t stream_index; int data_offset; int extradata; scalar_t__ current_frame; } ;
struct TYPE_12__ {int audio_track_count; int current_stream; int stream_count; TYPE_1__ video; TYPE_3__* audio; int video_duration; int video_height; int video_width; int next_packet_size; } ;
typedef TYPE_2__ XMVDemuxContext ;
struct TYPE_13__ {int created; int channels; int sample_rate; int block_samples; size_t stream_index; int data_size; int frame_size; int block_align; void* data_offset; int bit_rate; int bits_per_sample; int compression; int codec_id; } ;
typedef TYPE_3__ XMVAudioPacket ;
struct TYPE_16__ {int channels; int sample_rate; int block_align; int extradata_size; int extradata; int bit_rate; int bits_per_coded_sample; int codec_tag; int codec_id; int codec_type; int height; int width; } ;
struct TYPE_15__ {size_t nb_streams; TYPE_4__** streams; int * pb; TYPE_2__* priv_data; } ;
struct TYPE_14__ {size_t index; TYPE_7__* codecpar; int duration; } ;
typedef TYPE_4__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_5__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVMEDIA_TYPE_AUDIO ;
 int AVMEDIA_TYPE_VIDEO ;
 int AV_CODEC_ID_WMV2 ;
 int AV_RL32 (int*) ;
 int EIO ;
 int ENOMEM ;
 int MKBETAG (char,char,char,char) ;
 int av_assert0 (int) ;
 int av_freep (int *) ;
 TYPE_4__* avformat_new_stream (TYPE_5__*,int *) ;
 int avio_read (int *,int*,int) ;
 int avio_rl32 (int *) ;
 void* avio_tell (int *) ;
 int avpriv_set_pts_info (TYPE_4__*,int,int,int) ;
 int ff_alloc_extradata (TYPE_7__*,int) ;
 int memcpy (int ,int ,int) ;
 int xmv_read_extradata (int ,int *) ;

__attribute__((used)) static int xmv_process_packet_header(AVFormatContext *s)
{
    XMVDemuxContext *xmv = s->priv_data;
    AVIOContext *pb = s->pb;
    int ret;

    uint8_t data[8];
    uint16_t audio_track;
    uint64_t data_offset;


    xmv->next_packet_size = avio_rl32(pb);



    if (avio_read(pb, data, 8) != 8)
        return AVERROR(EIO);

    xmv->video.data_size = AV_RL32(data) & 0x007FFFFF;

    xmv->video.current_frame = 0;
    xmv->video.frame_count = (AV_RL32(data) >> 23) & 0xFF;

    xmv->video.has_extradata = (data[3] & 0x80) != 0;

    if (!xmv->video.created) {
        AVStream *vst = avformat_new_stream(s, ((void*)0));
        if (!vst)
            return AVERROR(ENOMEM);

        avpriv_set_pts_info(vst, 32, 1, 1000);

        vst->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
        vst->codecpar->codec_id = AV_CODEC_ID_WMV2;
        vst->codecpar->codec_tag = MKBETAG('W', 'M', 'V', '2');
        vst->codecpar->width = xmv->video_width;
        vst->codecpar->height = xmv->video_height;

        vst->duration = xmv->video_duration;

        xmv->video.stream_index = vst->index;

        xmv->video.created = 1;
    }
    xmv->video.data_size -= xmv->audio_track_count * 4;

    xmv->current_stream = 0;
    if (!xmv->video.frame_count) {
        xmv->video.frame_count = 1;
        xmv->current_stream = xmv->stream_count > 1;
    }



    for (audio_track = 0; audio_track < xmv->audio_track_count; audio_track++) {
        XMVAudioPacket *packet = &xmv->audio[audio_track];

        if (avio_read(pb, data, 4) != 4)
            return AVERROR(EIO);

        if (!packet->created) {
            AVStream *ast = avformat_new_stream(s, ((void*)0));
            if (!ast)
                return AVERROR(ENOMEM);

            ast->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
            ast->codecpar->codec_id = packet->codec_id;
            ast->codecpar->codec_tag = packet->compression;
            ast->codecpar->channels = packet->channels;
            ast->codecpar->sample_rate = packet->sample_rate;
            ast->codecpar->bits_per_coded_sample = packet->bits_per_sample;
            ast->codecpar->bit_rate = packet->bit_rate;
            ast->codecpar->block_align = 36 * packet->channels;

            avpriv_set_pts_info(ast, 32, packet->block_samples, packet->sample_rate);

            packet->stream_index = ast->index;

            ast->duration = xmv->video_duration;

            packet->created = 1;
        }

        packet->data_size = AV_RL32(data) & 0x007FFFFF;
        if ((packet->data_size == 0) && (audio_track != 0))





            packet->data_size = xmv->audio[audio_track - 1].data_size;


        packet->frame_size = packet->data_size / xmv->video.frame_count;
        packet->frame_size -= packet->frame_size % packet->block_align;
    }



    data_offset = avio_tell(pb);

    xmv->video.data_offset = data_offset;
    data_offset += xmv->video.data_size;

    for (audio_track = 0; audio_track < xmv->audio_track_count; audio_track++) {
        xmv->audio[audio_track].data_offset = data_offset;
        data_offset += xmv->audio[audio_track].data_size;
    }




    if (xmv->video.data_size > 0) {
        if (xmv->video.has_extradata) {
            xmv_read_extradata(xmv->video.extradata, pb);

            xmv->video.data_size -= 4;
            xmv->video.data_offset += 4;

            if (xmv->video.stream_index >= 0) {
                AVStream *vst = s->streams[xmv->video.stream_index];

                av_assert0(xmv->video.stream_index < s->nb_streams);

                if (vst->codecpar->extradata_size < 4) {
                    av_freep(&vst->codecpar->extradata);

                    if ((ret = ff_alloc_extradata(vst->codecpar, 4)) < 0)
                        return ret;
                }

                memcpy(vst->codecpar->extradata, xmv->video.extradata, 4);
            }
        }
    }

    return 0;
}
