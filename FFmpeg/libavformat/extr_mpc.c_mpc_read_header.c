
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_23__ {int seekable; } ;
struct TYPE_22__ {int channels; int bits_per_coded_sample; int* extradata; int sample_rate; int channel_layout; int codec_id; int codec_type; } ;
struct TYPE_21__ {TYPE_8__* pb; int metadata; TYPE_1__* priv_data; } ;
struct TYPE_20__ {int duration; scalar_t__ start_time; TYPE_7__* codecpar; } ;
struct TYPE_19__ {int ver; int fcount; int lastframe; int curbits; int frames; scalar_t__ frames_noted; scalar_t__ curframe; } ;
typedef int MPCFrame ;
typedef TYPE_1__ MPCContext ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVIO_SEEKABLE_NORMAL ;
 int AVMEDIA_TYPE_AUDIO ;
 int AV_CH_LAYOUT_STEREO ;
 int AV_CODEC_ID_MUSEPACK7 ;
 int AV_DICT_IGNORE_SUFFIX ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 int ENOMEM ;
 scalar_t__ MKTAG (char,char,char,int ) ;
 int MPC_FRAMESIZE ;
 int SEEK_SET ;
 int UINT_MAX ;
 int av_dict_get (int ,char*,int *,int ) ;
 int av_freep (int *) ;
 int av_log (TYPE_3__*,int ,char*,...) ;
 int av_malloc (int) ;
 TYPE_2__* avformat_new_stream (TYPE_3__*,int *) ;
 int avio_r8 (TYPE_8__*) ;
 scalar_t__ avio_rl24 (TYPE_8__*) ;
 int avio_rl32 (TYPE_8__*) ;
 int avio_seek (TYPE_8__*,int,int ) ;
 int avio_tell (TYPE_8__*) ;
 int avpriv_set_pts_info (TYPE_2__*,int,int ,int ) ;
 int ff_ape_parse_tag (TYPE_3__*) ;
 scalar_t__ ff_get_extradata (TYPE_3__*,TYPE_7__*,TYPE_8__*,int) ;
 int ff_id3v1_read (TYPE_3__*) ;
 int * mpc_rate ;

__attribute__((used)) static int mpc_read_header(AVFormatContext *s)
{
    MPCContext *c = s->priv_data;
    AVStream *st;

    if(avio_rl24(s->pb) != MKTAG('M', 'P', '+', 0)){
        av_log(s, AV_LOG_ERROR, "Not a Musepack file\n");
        return AVERROR_INVALIDDATA;
    }
    c->ver = avio_r8(s->pb);
    if(c->ver != 0x07 && c->ver != 0x17){
        av_log(s, AV_LOG_ERROR, "Can demux Musepack SV7, got version %02X\n", c->ver);
        return AVERROR_INVALIDDATA;
    }
    c->fcount = avio_rl32(s->pb);
    if((int64_t)c->fcount * sizeof(MPCFrame) >= UINT_MAX){
        av_log(s, AV_LOG_ERROR, "Too many frames, seeking is not possible\n");
        return AVERROR_INVALIDDATA;
    }
    if(c->fcount){
        c->frames = av_malloc(c->fcount * sizeof(MPCFrame));
        if(!c->frames){
            av_log(s, AV_LOG_ERROR, "Cannot allocate seektable\n");
            return AVERROR(ENOMEM);
        }
    }else{
        av_log(s, AV_LOG_WARNING, "Container reports no frames\n");
    }
    c->curframe = 0;
    c->lastframe = -1;
    c->curbits = 8;
    c->frames_noted = 0;

    st = avformat_new_stream(s, ((void*)0));
    if (!st)
        goto mem_error;
    st->codecpar->codec_type = AVMEDIA_TYPE_AUDIO;
    st->codecpar->codec_id = AV_CODEC_ID_MUSEPACK7;
    st->codecpar->channels = 2;
    st->codecpar->channel_layout = AV_CH_LAYOUT_STEREO;
    st->codecpar->bits_per_coded_sample = 16;

    if (ff_get_extradata(s, st->codecpar, s->pb, 16) < 0)
        goto mem_error;
    st->codecpar->sample_rate = mpc_rate[st->codecpar->extradata[2] & 3];
    avpriv_set_pts_info(st, 32, MPC_FRAMESIZE, st->codecpar->sample_rate);

    st->start_time = 0;
    st->duration = c->fcount;


    if (s->pb->seekable & AVIO_SEEKABLE_NORMAL) {
        int64_t pos = avio_tell(s->pb);
        ff_ape_parse_tag(s);
        if (!av_dict_get(s->metadata, "", ((void*)0), AV_DICT_IGNORE_SUFFIX))
            ff_id3v1_read(s);
        avio_seek(s->pb, pos, SEEK_SET);
    }

    return 0;
mem_error:
    av_freep(&c->frames);
    return AVERROR(ENOMEM);
}
