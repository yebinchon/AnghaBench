
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
typedef int int64_t ;
struct TYPE_16__ {int pb; TYPE_2__* priv_data; } ;
struct TYPE_15__ {int duration; int pts; int pos; } ;
struct TYPE_14__ {TYPE_1__* codecpar; } ;
struct TYPE_13__ {int q; } ;
struct TYPE_12__ {int codec_id; int codec_type; } ;
typedef TYPE_2__ MPL2Context ;
typedef TYPE_3__ AVStream ;
typedef TYPE_4__ AVPacket ;
typedef TYPE_5__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVMEDIA_TYPE_SUBTITLE ;
 int AV_CODEC_ID_MPL2 ;
 int ENOMEM ;
 int SEEK_CUR ;
 TYPE_3__* avformat_new_stream (TYPE_5__*,int *) ;
 int avio_feof (int ) ;
 int avio_rb24 (int ) ;
 int avio_seek (int ,int,int ) ;
 int avio_tell (int ) ;
 int avpriv_set_pts_info (TYPE_3__*,int,int,int) ;
 int ff_get_line (int ,char*,int) ;
 int ff_subtitles_queue_finalize (TYPE_5__*,int *) ;
 TYPE_4__* ff_subtitles_queue_insert (int *,char*,int ,int ) ;
 int read_ts (char**,int *,int*) ;
 size_t strcspn (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static int mpl2_read_header(AVFormatContext *s)
{
    MPL2Context *mpl2 = s->priv_data;
    AVStream *st = avformat_new_stream(s, ((void*)0));
    int res = 0;

    if (!st)
        return AVERROR(ENOMEM);
    avpriv_set_pts_info(st, 64, 1, 10);
    st->codecpar->codec_type = AVMEDIA_TYPE_SUBTITLE;
    st->codecpar->codec_id = AV_CODEC_ID_MPL2;

    if (avio_rb24(s->pb) != 0xefbbbf)
        avio_seek(s->pb, -3, SEEK_CUR);

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

        if (!read_ts(&p, &pts_start, &duration)) {
            AVPacket *sub;

            sub = ff_subtitles_queue_insert(&mpl2->q, p, strlen(p), 0);
            if (!sub)
                return AVERROR(ENOMEM);
            sub->pos = pos;
            sub->pts = pts_start;
            sub->duration = duration;
        }
    }

    ff_subtitles_queue_finalize(s, &mpl2->q);
    return res;
}
