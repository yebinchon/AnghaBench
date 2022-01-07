
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int codec_tag; int codec_id; int codec_type; } ;
struct TYPE_10__ {int * pb; } ;
struct TYPE_9__ {TYPE_3__* codecpar; } ;
typedef TYPE_1__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_2__ AVFormatContext ;
typedef TYPE_3__ AVCodecParameters ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVMEDIA_TYPE_VIDEO ;
 int AV_CODEC_ID_MIMIC ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 scalar_t__ HEADER_SIZE ;
 int MKTAG (char,char,char,int ) ;
 int av_log (TYPE_2__*,int ,char*) ;
 TYPE_1__* avformat_new_stream (TYPE_2__*,int *) ;
 scalar_t__ avio_feof (int *) ;
 scalar_t__ avio_r8 (int *) ;
 int avpriv_set_pts_info (TYPE_1__*,int,int,int) ;

__attribute__((used)) static int msnwc_tcp_read_header(AVFormatContext *ctx)
{
    AVIOContext *pb = ctx->pb;
    AVCodecParameters *par;
    AVStream *st;

    st = avformat_new_stream(ctx, ((void*)0));
    if (!st)
        return AVERROR(ENOMEM);

    par = st->codecpar;
    par->codec_type = AVMEDIA_TYPE_VIDEO;
    par->codec_id = AV_CODEC_ID_MIMIC;
    par->codec_tag = MKTAG('M', 'L', '2', '0');

    avpriv_set_pts_info(st, 32, 1, 1000);



    while(avio_r8(pb) != HEADER_SIZE && !avio_feof(pb)) ;

    if(avio_feof(pb)) {
        av_log(ctx, AV_LOG_ERROR, "Could not find valid start.\n");
        return AVERROR_INVALIDDATA;
    }

    return 0;
}
