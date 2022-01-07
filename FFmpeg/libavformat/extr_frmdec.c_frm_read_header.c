
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int * pb; } ;
struct TYPE_8__ {TYPE_1__* codecpar; } ;
struct TYPE_7__ {void* height; void* width; scalar_t__ codec_tag; int format; int codec_id; int codec_type; } ;
typedef TYPE_2__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVMEDIA_TYPE_VIDEO ;
 int AV_CODEC_ID_RAWVIDEO ;
 int ENOMEM ;
 TYPE_2__* avformat_new_stream (TYPE_3__*,int ) ;
 int avio_r8 (int *) ;
 void* avio_rl16 (int *) ;
 int avio_skip (int *,int) ;
 int avpriv_find_pix_fmt (int ,int ) ;
 int frm_pix_fmt_tags ;

__attribute__((used)) static int frm_read_header(AVFormatContext *avctx)
{
    AVIOContext *pb = avctx->pb;
    AVStream *st = avformat_new_stream(avctx, 0);
    if (!st)
        return AVERROR(ENOMEM);

    st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    st->codecpar->codec_id = AV_CODEC_ID_RAWVIDEO;
    avio_skip(pb, 3);

    st->codecpar->format = avpriv_find_pix_fmt(frm_pix_fmt_tags, avio_r8(pb));
    if (!st->codecpar->format)
        return AVERROR_INVALIDDATA;

    st->codecpar->codec_tag = 0;
    st->codecpar->width = avio_rl16(pb);
    st->codecpar->height = avio_rl16(pb);
    return 0;
}
