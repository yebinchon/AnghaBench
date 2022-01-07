
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int int64_t ;
typedef int boundary ;
struct TYPE_10__ {int pb; } ;
struct TYPE_9__ {TYPE_1__* codecpar; } ;
struct TYPE_8__ {int codec_id; int codec_type; } ;
typedef TYPE_2__ AVStream ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AVMEDIA_TYPE_VIDEO ;
 int AV_CODEC_ID_MJPEG ;
 int ENOMEM ;
 int SEEK_SET ;
 TYPE_2__* avformat_new_stream (TYPE_3__*,int *) ;
 int avio_seek (int ,int ,int ) ;
 int avio_tell (int ) ;
 int avpriv_set_pts_info (TYPE_2__*,int,int,int) ;
 int get_line (int ,char*,int) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static int mpjpeg_read_header(AVFormatContext *s)
{
    AVStream *st;
    char boundary[70 + 2 + 1] = {0};
    int64_t pos = avio_tell(s->pb);
    int ret;

    do {
        ret = get_line(s->pb, boundary, sizeof(boundary));
        if (ret < 0)
            return ret;
    } while (!boundary[0]);

    if (strncmp(boundary, "--", 2))
        return AVERROR_INVALIDDATA;

    st = avformat_new_stream(s, ((void*)0));
    if (!st)
        return AVERROR(ENOMEM);

    st->codecpar->codec_type = AVMEDIA_TYPE_VIDEO;
    st->codecpar->codec_id = AV_CODEC_ID_MJPEG;

    avpriv_set_pts_info(st, 60, 1, 25);

    avio_seek(s->pb, pos, SEEK_SET);

    return 0;
}
