
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int int64_t ;
typedef int int32_t ;
struct TYPE_14__ {scalar_t__ sample_rate; int block_align; int width; int height; int codec_id; int codec_type; } ;
struct TYPE_13__ {int duration; scalar_t__ start_time; TYPE_1__* priv_data; int * pb; } ;
struct TYPE_12__ {TYPE_5__* codecpar; } ;
struct TYPE_11__ {scalar_t__ frames; int has_sound; scalar_t__ vidpos; int bpc; int readvid; scalar_t__ wavpos; scalar_t__ bytes_left; } ;
typedef TYPE_1__ DXAContext ;
typedef TYPE_2__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVMEDIA_TYPE_VIDEO ;
 int AV_CODEC_ID_DXA ;
 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 int AV_TIME_BASE ;
 int ENOMEM ;
 scalar_t__ MKTAG (char,char,char,char) ;
 int SEEK_SET ;
 int av_log (TYPE_3__*,int ,char*,...) ;
 int av_reduce (int*,int*,int,int,unsigned long) ;
 TYPE_2__* avformat_new_stream (TYPE_3__*,int *) ;
 int avio_feof (int *) ;
 int avio_r8 (int *) ;
 void* avio_rb16 (int *) ;
 void* avio_rb32 (int *) ;
 scalar_t__ avio_rl32 (int *) ;
 int avio_seek (int *,scalar_t__,int ) ;
 int avio_skip (int *,scalar_t__) ;
 scalar_t__ avio_tell (int *) ;
 int avpriv_set_pts_info (TYPE_2__*,int,int,int) ;
 int ff_get_wav_header (TYPE_3__*,int *,TYPE_5__*,scalar_t__,int ) ;

__attribute__((used)) static int dxa_read_header(AVFormatContext *s)
{
    AVIOContext *pb = s->pb;
    DXAContext *c = s->priv_data;
    AVStream *st, *ast;
    uint32_t tag;
    int32_t fps;
    int w, h;
    int num, den;
    int flags;
    int ret;

    tag = avio_rl32(pb);
    if (tag != MKTAG('D', 'E', 'X', 'A'))
        return AVERROR_INVALIDDATA;
    flags = avio_r8(pb);
    c->frames = avio_rb16(pb);
    if(!c->frames){
        av_log(s, AV_LOG_ERROR, "File contains no frames ???\n");
        return AVERROR_INVALIDDATA;
    }

    fps = avio_rb32(pb);
    if(fps > 0){
        den = 1000;
        num = fps;
    }else if (fps < 0){
        den = 100000;
        num = -fps;
    }else{
        den = 10;
        num = 1;
    }
    w = avio_rb16(pb);
    h = avio_rb16(pb);
    c->has_sound = 0;

    st = avformat_new_stream(s, ((void*)0));
    if (!st)
        return AVERROR(ENOMEM);


    if(avio_rl32(pb) == MKTAG('W', 'A', 'V', 'E')){
        uint32_t size, fsize;
        c->has_sound = 1;
        size = avio_rb32(pb);
        c->vidpos = avio_tell(pb) + size;
        avio_skip(pb, 16);
        fsize = avio_rl32(pb);

        ast = avformat_new_stream(s, ((void*)0));
        if (!ast)
            return AVERROR(ENOMEM);
        ret = ff_get_wav_header(s, pb, ast->codecpar, fsize, 0);
        if (ret < 0)
            return ret;
        if (ast->codecpar->sample_rate > 0)
            avpriv_set_pts_info(ast, 64, 1, ast->codecpar->sample_rate);

        while(avio_tell(pb) < c->vidpos && !avio_feof(pb)){
            tag = avio_rl32(pb);
            fsize = avio_rl32(pb);
            if(tag == MKTAG('d', 'a', 't', 'a')) break;
            avio_skip(pb, fsize);
        }
        c->bpc = (fsize + c->frames - 1) / c->frames;
        if(ast->codecpar->block_align)
            c->bpc = ((c->bpc + ast->codecpar->block_align - 1) / ast->codecpar->block_align) * ast->codecpar->block_align;
        c->bytes_left = fsize;
        c->wavpos = avio_tell(pb);
        avio_seek(pb, c->vidpos, SEEK_SET);
    }


    st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    st->codecpar->codec_id = AV_CODEC_ID_DXA;
    st->codecpar->width = w;
    st->codecpar->height = h;
    av_reduce(&den, &num, den, num, (1UL<<31)-1);
    avpriv_set_pts_info(st, 33, num, den);




    if(flags & 0xC0){
        st->codecpar->height >>= 1;
    }
    c->readvid = !c->has_sound;
    c->vidpos = avio_tell(pb);
    s->start_time = 0;
    s->duration = (int64_t)c->frames * AV_TIME_BASE * num / den;
    av_log(s, AV_LOG_DEBUG, "%d frame(s)\n",c->frames);

    return 0;
}
