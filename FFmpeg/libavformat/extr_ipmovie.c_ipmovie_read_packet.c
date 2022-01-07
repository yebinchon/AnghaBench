
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * pb; int * priv_data; } ;
typedef int IPMVEContext ;
typedef int AVPacket ;
typedef int AVIOContext ;
typedef TYPE_1__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_EOF ;
 int AVERROR_INVALIDDATA ;
 int CHUNK_BAD ;
 int CHUNK_END ;
 int CHUNK_EOF ;
 int CHUNK_INIT_AUDIO ;
 int CHUNK_INIT_VIDEO ;
 int CHUNK_NOMEM ;
 int CHUNK_SHUTDOWN ;
 int CHUNK_VIDEO ;
 int EIO ;
 int ENOMEM ;
 int process_ipmovie_chunk (int *,int *,int *) ;

__attribute__((used)) static int ipmovie_read_packet(AVFormatContext *s,
                               AVPacket *pkt)
{
    IPMVEContext *ipmovie = s->priv_data;
    AVIOContext *pb = s->pb;
    int ret;

    for (;;) {
    ret = process_ipmovie_chunk(ipmovie, pb, pkt);
    if (ret == CHUNK_BAD)
        ret = AVERROR_INVALIDDATA;
    else if (ret == CHUNK_EOF)
        ret = AVERROR(EIO);
    else if (ret == CHUNK_NOMEM)
        ret = AVERROR(ENOMEM);
    else if (ret == CHUNK_END || ret == CHUNK_SHUTDOWN)
        ret = AVERROR_EOF;
    else if (ret == CHUNK_VIDEO)
        ret = 0;
    else if (ret == CHUNK_INIT_VIDEO || ret == CHUNK_INIT_AUDIO)
        continue;
    else
        continue;

    return ret;
    }
}
