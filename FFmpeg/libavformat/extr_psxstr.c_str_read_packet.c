
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_20__ {TYPE_3__* priv_data; int * pb; } ;
struct TYPE_19__ {int size; int pos; int duration; int stream_index; int * data; int * buf; } ;
struct TYPE_18__ {int start_time; TYPE_1__* codecpar; int index; } ;
struct TYPE_17__ {TYPE_2__* channels; } ;
struct TYPE_16__ {int audio_stream_index; int video_stream_index; TYPE_5__ tmp_pkt; } ;
struct TYPE_15__ {int channels; int sample_rate; int block_align; int channel_layout; int codec_tag; int codec_id; int codec_type; void* height; void* width; } ;
typedef TYPE_3__ StrDemuxContext ;
typedef TYPE_4__ AVStream ;
typedef TYPE_5__ AVPacket ;
typedef int AVIOContext ;
typedef TYPE_6__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVMEDIA_TYPE_AUDIO ;
 int AVMEDIA_TYPE_VIDEO ;
 int AV_CH_LAYOUT_MONO ;
 int AV_CH_LAYOUT_STEREO ;
 int AV_CODEC_ID_ADPCM_XA ;
 int AV_CODEC_ID_MDEC ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 void* AV_RL16 (unsigned char*) ;
 int AV_RL32 (unsigned char*) ;


 unsigned char CDXA_TYPE_MASK ;

 int EIO ;
 int ENOMEM ;
 int RAW_CD_SECTOR_SIZE ;
 int VIDEO_DATA_CHUNK_SIZE ;
 int VIDEO_DATA_HEADER_SIZE ;
 int av_log (TYPE_6__*,int ,char*,...) ;
 int av_new_packet (TYPE_5__*,int) ;
 int av_packet_unref (TYPE_5__*) ;
 TYPE_4__* avformat_new_stream (TYPE_6__*,int *) ;
 scalar_t__ avio_feof (int *) ;
 int avio_read (int *,unsigned char*,int) ;
 int avio_tell (int *) ;
 int avpriv_set_pts_info (TYPE_4__*,int,int,int) ;
 int memcpy (int *,unsigned char*,int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static int str_read_packet(AVFormatContext *s,
                           AVPacket *ret_pkt)
{
    AVIOContext *pb = s->pb;
    StrDemuxContext *str = s->priv_data;
    unsigned char sector[RAW_CD_SECTOR_SIZE];
    int channel;
    AVPacket *pkt;
    AVStream *st;

    while (1) {

        if (avio_read(pb, sector, RAW_CD_SECTOR_SIZE) != RAW_CD_SECTOR_SIZE)
            return AVERROR(EIO);

        channel = sector[0x11];
        if (channel >= 32)
            return AVERROR_INVALIDDATA;

        switch (sector[0x12] & CDXA_TYPE_MASK) {

        case 129:
        case 128:
            {

                int current_sector = AV_RL16(&sector[0x1C]);
                int sector_count = AV_RL16(&sector[0x1E]);
                int frame_size = AV_RL32(&sector[0x24]);

                if(!( frame_size>=0
                     && current_sector < sector_count
                     && sector_count*VIDEO_DATA_CHUNK_SIZE >=frame_size)){
                    av_log(s, AV_LOG_ERROR, "Invalid parameters %d %d %d\n", current_sector, sector_count, frame_size);
                    break;
                }

                if(str->channels[channel].video_stream_index < 0){

                    st = avformat_new_stream(s, ((void*)0));
                    if (!st)
                        return AVERROR(ENOMEM);
                    avpriv_set_pts_info(st, 64, 1, 15);

                    str->channels[channel].video_stream_index = st->index;

                    st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
                    st->codecpar->codec_id = AV_CODEC_ID_MDEC;
                    st->codecpar->codec_tag = 0;
                    st->codecpar->width = AV_RL16(&sector[0x28]);
                    st->codecpar->height = AV_RL16(&sector[0x2A]);
                }


                pkt = &str->channels[channel].tmp_pkt;

                if(pkt->size != sector_count*VIDEO_DATA_CHUNK_SIZE){
                    if(pkt->data)
                        av_log(s, AV_LOG_ERROR, "mismatching sector_count\n");
                    av_packet_unref(pkt);
                    if (av_new_packet(pkt, sector_count*VIDEO_DATA_CHUNK_SIZE))
                        return AVERROR(EIO);
                    memset(pkt->data, 0, sector_count*VIDEO_DATA_CHUNK_SIZE);

                    pkt->pos= avio_tell(pb) - RAW_CD_SECTOR_SIZE;
                    pkt->stream_index =
                        str->channels[channel].video_stream_index;
                }

                memcpy(pkt->data + current_sector*VIDEO_DATA_CHUNK_SIZE,
                       sector + VIDEO_DATA_HEADER_SIZE,
                       VIDEO_DATA_CHUNK_SIZE);

                if (current_sector == sector_count-1) {
                    pkt->size= frame_size;
                    *ret_pkt = *pkt;
                    pkt->data= ((void*)0);
                    pkt->size= -1;
                    pkt->buf = ((void*)0);
                    return 0;
                }

            }
            break;

        case 130:
            if(str->channels[channel].audio_stream_index < 0){
                int fmt = sector[0x13];

                st = avformat_new_stream(s, ((void*)0));
                if (!st)
                    return AVERROR(ENOMEM);

                str->channels[channel].audio_stream_index = st->index;

                st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
                st->codecpar->codec_id = AV_CODEC_ID_ADPCM_XA;
                st->codecpar->codec_tag = 0;
                if (fmt & 1) {
                    st->codecpar->channels = 2;
                    st->codecpar->channel_layout = AV_CH_LAYOUT_STEREO;
                } else {
                    st->codecpar->channels = 1;
                    st->codecpar->channel_layout = AV_CH_LAYOUT_MONO;
                }
                st->codecpar->sample_rate = (fmt&4)?18900:37800;

                st->codecpar->block_align = 128;

                avpriv_set_pts_info(st, 64, 18 * 224 / st->codecpar->channels,
                                    st->codecpar->sample_rate);
                st->start_time = 0;
            }
            pkt = ret_pkt;
            if (av_new_packet(pkt, 2304))
                return AVERROR(EIO);
            memcpy(pkt->data,sector+24,2304);

            pkt->stream_index =
                str->channels[channel].audio_stream_index;
            pkt->duration = 1;
            return 0;
        default:
            av_log(s, AV_LOG_WARNING, "Unknown sector type %02X\n", sector[0x12]);

            break;
        }

        if (avio_feof(pb))
            return AVERROR(EIO);
    }
}
