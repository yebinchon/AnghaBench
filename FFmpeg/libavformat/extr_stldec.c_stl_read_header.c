
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int line ;
typedef scalar_t__ int64_t ;
struct TYPE_16__ {int pb; TYPE_2__* priv_data; } ;
struct TYPE_15__ {scalar_t__ pos; int duration; scalar_t__ pts; } ;
struct TYPE_14__ {TYPE_1__* codecpar; } ;
struct TYPE_13__ {int q; } ;
struct TYPE_12__ {int codec_id; int codec_type; } ;
typedef TYPE_2__ STLContext ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVPacket ;
typedef TYPE_5__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVMEDIA_TYPE_SUBTITLE ;
 int AV_CODEC_ID_STL ;
 scalar_t__ AV_NOPTS_VALUE ;
 int ENOMEM ;
 TYPE_3__* avformat_new_stream (TYPE_5__*,int *) ;
 int avio_feof (int ) ;
 scalar_t__ avio_tell (int ) ;
 int avpriv_set_pts_info (TYPE_3__*,int,int,int) ;
 int ff_get_line (int ,char*,int) ;
 int ff_subtitles_queue_finalize (TYPE_5__*,int *) ;
 TYPE_4__* ff_subtitles_queue_insert (int *,char*,int ,int ) ;
 scalar_t__ get_pts (char**,int*) ;
 size_t strcspn (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static int stl_read_header(AVFormatContext *s)
{
    STLContext *stl = s->priv_data;
    AVStream *st = avformat_new_stream(s, ((void*)0));

    if (!st)
        return AVERROR(ENOMEM);
    avpriv_set_pts_info(st, 64, 1, 100);
    st->codecpar->codec_type = AVMEDIA_TYPE_SUBTITLE;
    st->codecpar->codec_id = AV_CODEC_ID_STL;

    while (!avio_feof(s->pb)) {
        char line[4096];
        char *p = line;
        const int64_t pos = avio_tell(s->pb);
        int len = ff_get_line(s->pb, line, sizeof(line));
        int64_t pts_start;
        int duration;

        if (!len)
            break;

        line[strcspn(line, "\r\n")] = 0;
        pts_start = get_pts(&p , &duration);

        if (pts_start != AV_NOPTS_VALUE) {
            AVPacket *sub;
            sub = ff_subtitles_queue_insert(&stl->q, p, strlen(p), 0);
            if (!sub)
                return AVERROR(ENOMEM);
            sub->pos = pos;
            sub->pts = pts_start;
            sub->duration = duration;
        }
    }
    ff_subtitles_queue_finalize(s, &stl->q);
    return 0;
}
