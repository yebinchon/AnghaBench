
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef void* uint8_t ;
typedef int uint32_t ;
struct TYPE_11__ {int audio_stream_index; void* bps; void* channels; void* sample_rate; void* version; int video_stream_index; } ;
typedef TYPE_1__ WsVqaDemuxContext ;
struct TYPE_14__ {void** extradata; void* height; void* width; scalar_t__ codec_tag; int codec_id; int codec_type; } ;
struct TYPE_13__ {int ctx_flags; int * pb; TYPE_1__* priv_data; } ;
struct TYPE_12__ {void* duration; void* nb_frames; TYPE_6__* codecpar; int index; scalar_t__ start_time; } ;
typedef TYPE_2__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVFMTCTX_NOHEADER ;
 int AVMEDIA_TYPE_VIDEO ;
 int AV_CODEC_ID_WS_VQA ;
 int AV_LOG_ERROR ;
 int AV_RB32 (void**) ;
 void* AV_RL16 (void**) ;




 int EIO ;
 int ENOMEM ;




 int SEEK_SET ;
 int VQA_HEADER_SIZE ;
 int VQA_PREAMBLE_SIZE ;
 int av_fourcc2str (int) ;
 int av_log (TYPE_3__*,int ,char*,int) ;
 TYPE_2__* avformat_new_stream (TYPE_3__*,int *) ;
 int avio_read (int *,void**,int) ;
 int avio_seek (int *,int,int ) ;
 int avio_skip (int *,int) ;
 int avpriv_set_pts_info (TYPE_2__*,int,int,int) ;
 scalar_t__ ff_get_extradata (TYPE_3__*,TYPE_6__*,int *,int ) ;

__attribute__((used)) static int wsvqa_read_header(AVFormatContext *s)
{
    WsVqaDemuxContext *wsvqa = s->priv_data;
    AVIOContext *pb = s->pb;
    AVStream *st;
    uint8_t *header;
    uint8_t scratch[VQA_PREAMBLE_SIZE];
    uint32_t chunk_tag;
    uint32_t chunk_size;
    int fps;


    st = avformat_new_stream(s, ((void*)0));
    if (!st)
        return AVERROR(ENOMEM);
    st->start_time = 0;
    wsvqa->video_stream_index = st->index;
    st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    st->codecpar->codec_id = AV_CODEC_ID_WS_VQA;
    st->codecpar->codec_tag = 0;


    avio_seek(pb, 20, SEEK_SET);


    if (ff_get_extradata(s, st->codecpar, pb, VQA_HEADER_SIZE) < 0)
        return AVERROR(ENOMEM);
    header = st->codecpar->extradata;
    st->codecpar->width = AV_RL16(&header[6]);
    st->codecpar->height = AV_RL16(&header[8]);
    fps = header[12];
    st->nb_frames =
    st->duration = AV_RL16(&header[4]);
    if (fps < 1 || fps > 30) {
        av_log(s, AV_LOG_ERROR, "invalid fps: %d\n", fps);
        return AVERROR_INVALIDDATA;
    }
    avpriv_set_pts_info(st, 64, 1, fps);

    wsvqa->version = AV_RL16(&header[ 0]);
    wsvqa->sample_rate = AV_RL16(&header[24]);
    wsvqa->channels = header[26];
    wsvqa->bps = header[27];
    wsvqa->audio_stream_index = -1;

    s->ctx_flags |= AVFMTCTX_NOHEADER;



    do {
        if (avio_read(pb, scratch, VQA_PREAMBLE_SIZE) != VQA_PREAMBLE_SIZE)
            return AVERROR(EIO);
        chunk_tag = AV_RB32(&scratch[0]);
        chunk_size = AV_RB32(&scratch[4]);


        switch (chunk_tag) {
        case 134:
        case 133:
        case 135:
        case 129:
        case 128:
        case 130:
        case 131:
        case 132:
            break;

        default:
            av_log(s, AV_LOG_ERROR, " note: unknown chunk seen (%s)\n",
                   av_fourcc2str(chunk_tag));
            break;
        }

        avio_skip(pb, chunk_size);
    } while (chunk_tag != 131);

    return 0;
}
