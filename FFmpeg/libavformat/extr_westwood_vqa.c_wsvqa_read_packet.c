
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_13__ {int audio_stream_index; int sample_rate; int channels; int bps; int video_stream_index; int version; } ;
typedef TYPE_1__ WsVqaDemuxContext ;
struct TYPE_17__ {int sample_rate; int bits_per_coded_sample; int channels; int extradata; int codec_id; int codec_type; } ;
struct TYPE_16__ {int * pb; TYPE_1__* priv_data; } ;
struct TYPE_15__ {int stream_index; int duration; int data; } ;
struct TYPE_14__ {int index; TYPE_7__* codecpar; } ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVPacket ;
typedef int AVIOContext ;
typedef TYPE_4__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVMEDIA_TYPE_AUDIO ;
 int AV_CODEC_ID_ADPCM_IMA_WS ;
 int AV_CODEC_ID_PCM_S16LE ;
 int AV_CODEC_ID_PCM_U8 ;
 int AV_CODEC_ID_WESTWOOD_SND1 ;
 int AV_LOG_INFO ;
 int AV_RB32 (int *) ;
 int AV_RL16 (int ) ;
 int AV_WL16 (int ,int ) ;

 int EIO ;
 int ENOMEM ;



 int VQA_PREAMBLE_SIZE ;

 int av_bswap32 (int) ;
 int av_fourcc2str (int ) ;
 int av_get_packet (int *,TYPE_3__*,int) ;
 int av_log (TYPE_4__*,int ,char*,int ) ;
 TYPE_2__* avformat_new_stream (TYPE_4__*,int *) ;
 int avio_read (int *,int *,int) ;
 int avio_skip (int *,int) ;
 int avpriv_set_pts_info (TYPE_2__*,int,int,int) ;
 int ff_alloc_extradata (TYPE_7__*,int) ;

__attribute__((used)) static int wsvqa_read_packet(AVFormatContext *s,
                             AVPacket *pkt)
{
    WsVqaDemuxContext *wsvqa = s->priv_data;
    AVIOContext *pb = s->pb;
    int ret = -1;
    uint8_t preamble[VQA_PREAMBLE_SIZE];
    uint32_t chunk_type;
    uint32_t chunk_size;
    int skip_byte;

    while (avio_read(pb, preamble, VQA_PREAMBLE_SIZE) == VQA_PREAMBLE_SIZE) {
        chunk_type = AV_RB32(&preamble[0]);
        chunk_size = AV_RB32(&preamble[4]);

        skip_byte = chunk_size & 0x01;

        if ((chunk_type == 131) || (chunk_type == 130) ||
            (chunk_type == 129) || (chunk_type == 128)) {

            ret= av_get_packet(pb, pkt, chunk_size);
            if (ret<0)
                return AVERROR(EIO);

            switch (chunk_type) {
            case 131:
            case 130:
            case 129:
                if (wsvqa->audio_stream_index == -1) {
                    AVStream *st = avformat_new_stream(s, ((void*)0));
                    if (!st)
                        return AVERROR(ENOMEM);

                    wsvqa->audio_stream_index = st->index;
                    if (!wsvqa->sample_rate)
                        wsvqa->sample_rate = 22050;
                    if (!wsvqa->channels)
                        wsvqa->channels = 1;
                    if (!wsvqa->bps)
                        wsvqa->bps = 8;
                    st->codecpar->sample_rate = wsvqa->sample_rate;
                    st->codecpar->bits_per_coded_sample = wsvqa->bps;
                    st->codecpar->channels = wsvqa->channels;
                    st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;

                    avpriv_set_pts_info(st, 64, 1, st->codecpar->sample_rate);

                    switch (chunk_type) {
                    case 131:
                        if (wsvqa->bps == 16)
                            st->codecpar->codec_id = AV_CODEC_ID_PCM_S16LE;
                        else
                            st->codecpar->codec_id = AV_CODEC_ID_PCM_U8;
                        break;
                    case 130:
                        st->codecpar->codec_id = AV_CODEC_ID_WESTWOOD_SND1;
                        break;
                    case 129:
                        st->codecpar->codec_id = AV_CODEC_ID_ADPCM_IMA_WS;
                        if (ff_alloc_extradata(st->codecpar, 2))
                            return AVERROR(ENOMEM);
                        AV_WL16(st->codecpar->extradata, wsvqa->version);
                        break;
                    }
                }

                pkt->stream_index = wsvqa->audio_stream_index;
                switch (chunk_type) {
                case 130:

                    if(pkt->data)
                        pkt->duration = AV_RL16(pkt->data) / wsvqa->channels;
                    break;
                case 129:

                    pkt->duration = (chunk_size * 2) / wsvqa->channels;
                    break;
                }
                break;
            case 128:
                pkt->stream_index = wsvqa->video_stream_index;
                pkt->duration = 1;
                break;
            }


            if (skip_byte)
                avio_skip(pb, 1);

            return ret;
        } else {
            switch(chunk_type){
            case 132:
                break;
            default:
                av_log(s, AV_LOG_INFO, "Skipping unknown chunk %s\n",
                       av_fourcc2str(av_bswap32(chunk_type)));
            }
            avio_skip(pb, chunk_size + skip_byte);
        }
    }

    return ret;
}
