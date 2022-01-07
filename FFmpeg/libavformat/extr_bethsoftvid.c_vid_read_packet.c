
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_20__ {int * pb; TYPE_2__* priv_data; } ;
struct TYPE_19__ {int duration; int flags; int stream_index; } ;
struct TYPE_18__ {int start_time; TYPE_1__* codecpar; int index; } ;
struct TYPE_17__ {int is_finished; int sample_rate; int nframes; int audio_index; int palette; } ;
struct TYPE_16__ {int channels; int bits_per_coded_sample; int sample_rate; int bit_rate; int channel_layout; int codec_id; int codec_type; } ;
typedef TYPE_2__ BVID_DemuxContext ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVPacket ;
typedef int AVIOContext ;
typedef TYPE_5__ AVFormatContext ;



 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int AVERROR_INVALIDDATA ;
 int AVMEDIA_TYPE_AUDIO ;
 int AV_CH_LAYOUT_MONO ;
 int AV_CODEC_ID_PCM_U8 ;
 int AV_LOG_ERROR ;
 int AV_LOG_VERBOSE ;
 int AV_LOG_WARNING ;
 int AV_PKT_FLAG_KEY ;
 int BVID_PALETTE_SIZE ;
 int EIO ;
 int ENOMEM ;






 int av_freep (int *) ;
 int av_get_packet (int *,TYPE_4__*,int) ;
 int av_log (TYPE_5__*,int ,char*,...) ;
 int av_malloc (int ) ;
 TYPE_3__* avformat_new_stream (TYPE_5__*,int *) ;
 scalar_t__ avio_feof (int *) ;
 int avio_r8 (int *) ;
 int avio_read (int *,int ,int ) ;
 int avio_rl16 (int *) ;
 int avpriv_set_pts_info (TYPE_3__*,int,int,int) ;
 int read_frame (TYPE_2__*,int *,TYPE_4__*,unsigned char,TYPE_5__*) ;

__attribute__((used)) static int vid_read_packet(AVFormatContext *s,
                           AVPacket *pkt)
{
    BVID_DemuxContext *vid = s->priv_data;
    AVIOContext *pb = s->pb;
    unsigned char block_type;
    int audio_length;
    int ret_value;

    if(vid->is_finished || avio_feof(pb))
        return AVERROR_EOF;

    block_type = avio_r8(pb);
    switch(block_type){
        case 131:
            if (vid->palette) {
                av_log(s, AV_LOG_WARNING, "discarding unused palette\n");
                av_freep(&vid->palette);
            }
            vid->palette = av_malloc(BVID_PALETTE_SIZE);
            if (!vid->palette)
                return AVERROR(ENOMEM);
            if (avio_read(pb, vid->palette, BVID_PALETTE_SIZE) != BVID_PALETTE_SIZE) {
                av_freep(&vid->palette);
                return AVERROR(EIO);
            }
            return vid_read_packet(s, pkt);

        case 132:
            avio_rl16(pb);

            vid->sample_rate = 1000000 / (256 - avio_r8(pb));
        case 134:
            if (vid->audio_index < 0) {
                AVStream *st = avformat_new_stream(s, ((void*)0));
                if (!st)
                    return AVERROR(ENOMEM);
                vid->audio_index = st->index;
                st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
                st->codecpar->codec_id = AV_CODEC_ID_PCM_U8;
                st->codecpar->channels = 1;
                st->codecpar->channel_layout = AV_CH_LAYOUT_MONO;
                st->codecpar->bits_per_coded_sample = 8;
                st->codecpar->sample_rate = vid->sample_rate;
                st->codecpar->bit_rate = 8 * st->codecpar->sample_rate;
                st->start_time = 0;
                avpriv_set_pts_info(st, 64, 1, vid->sample_rate);
            }
            audio_length = avio_rl16(pb);
            if ((ret_value = av_get_packet(pb, pkt, audio_length)) != audio_length) {
                if (ret_value < 0)
                    return ret_value;
                av_log(s, AV_LOG_ERROR, "incomplete audio block\n");
                return AVERROR(EIO);
            }
            pkt->stream_index = vid->audio_index;
            pkt->duration = audio_length;
            pkt->flags |= AV_PKT_FLAG_KEY;
            return 0;

        case 129:
        case 128:
        case 130:
            return read_frame(vid, pb, pkt, block_type, s);

        case 133:
            if(vid->nframes != 0)
                av_log(s, AV_LOG_VERBOSE, "reached terminating character but not all frames read.\n");
            vid->is_finished = 1;
            return AVERROR(EIO);
        default:
            av_log(s, AV_LOG_ERROR, "unknown block (character = %c, decimal = %d, hex = %x)!!!\n",
                   block_type, block_type, block_type);
            return AVERROR_INVALIDDATA;
    }
}
