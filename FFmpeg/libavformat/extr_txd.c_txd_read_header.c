
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int time_base; int avg_frame_rate; TYPE_1__* codecpar; } ;
struct TYPE_5__ {int codec_id; int codec_type; } ;
typedef TYPE_2__ AVStream ;
typedef int AVFormatContext ;


 int AVERROR (int ) ;
 int AVMEDIA_TYPE_VIDEO ;
 int AV_CODEC_ID_TXD ;
 int ENOMEM ;
 int av_inv_q (int ) ;
 TYPE_2__* avformat_new_stream (int *,int *) ;
 int avpriv_set_pts_info (TYPE_2__*,int,int,int) ;

__attribute__((used)) static int txd_read_header(AVFormatContext *s) {
    AVStream *st;

    st = avformat_new_stream(s, ((void*)0));
    if (!st)
        return AVERROR(ENOMEM);
    st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    st->codecpar->codec_id = AV_CODEC_ID_TXD;
    avpriv_set_pts_info(st, 64, 1, 5);
    st->avg_frame_rate = av_inv_q(st->time_base);


    return 0;
}
