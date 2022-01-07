
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {int sample_rate; int frame_size; int channels; int codec_id; } ;
struct TYPE_13__ {int bytes_left_in_chunk; } ;
struct TYPE_12__ {int * pb; TYPE_3__* priv_data; } ;
struct TYPE_11__ {TYPE_6__* codecpar; int duration; } ;
typedef TYPE_1__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;
typedef TYPE_3__ ACTContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AV_CODEC_ID_G729 ;
 int AV_LOG_ERROR ;
 int CHUNK_SIZE ;
 int ENOMEM ;
 int SEEK_SET ;
 int av_log (TYPE_2__*,int ,char*,int) ;
 int av_rescale (int,int,int) ;
 TYPE_1__* avformat_new_stream (TYPE_2__*,int *) ;
 int avio_r8 (int *) ;
 int avio_rl16 (int *) ;
 int avio_rl32 (int *) ;
 int avio_seek (int *,int,int ) ;
 int avio_skip (int *,int) ;
 int avpriv_set_pts_info (TYPE_1__*,int,int,int) ;
 int ff_get_wav_header (TYPE_2__*,int *,TYPE_6__*,int,int ) ;

__attribute__((used)) static int read_header(AVFormatContext *s)
{
    ACTContext* ctx = s->priv_data;
    AVIOContext *pb = s->pb;
    int size;
    AVStream* st;

    int min,sec,msec;

    st = avformat_new_stream(s, ((void*)0));
    if (!st)
        return AVERROR(ENOMEM);

    avio_skip(pb, 16);
    size=avio_rl32(pb);
    ff_get_wav_header(s, pb, st->codecpar, size, 0);





    if (st->codecpar->sample_rate != 8000) {
        av_log(s, AV_LOG_ERROR, "Sample rate %d is not supported.\n", st->codecpar->sample_rate);
        return AVERROR_INVALIDDATA;
    }

    st->codecpar->frame_size=80;
    st->codecpar->channels=1;
    avpriv_set_pts_info(st, 64, 1, 100);

    st->codecpar->codec_id=AV_CODEC_ID_G729;

    avio_seek(pb, 257, SEEK_SET);
    msec=avio_rl16(pb);
    sec=avio_r8(pb);
    min=avio_rl32(pb);

    st->duration = av_rescale(1000*(min*60+sec)+msec, st->codecpar->sample_rate, 1000 * st->codecpar->frame_size);

    ctx->bytes_left_in_chunk=CHUNK_SIZE;

    avio_seek(pb, 512, SEEK_SET);

    return 0;
}
