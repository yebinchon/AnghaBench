
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int time_t ;
struct tm {int dummy; } ;
typedef int buf ;
struct TYPE_6__ {int b_flags; int nb_packets; int duration; int preroll; void* packet_size; } ;
struct TYPE_5__ {int metadata; int * pb; TYPE_2__* priv_data; } ;
typedef int GUIDParseTable ;
typedef int AVIOContext ;
typedef TYPE_1__ AVFormatContext ;
typedef TYPE_2__ ASFContext ;


 int ASF_FLAG_BROADCAST ;
 int AV_LOG_WARNING ;
 scalar_t__ av_dict_set (int *,char*,char*,int ) ;
 int av_log (TYPE_1__*,int ,char*) ;
 void* avio_rl32 (int *) ;
 int avio_rl64 (int *) ;
 int avio_skip (int *,int) ;
 struct tm* gmtime_r (int*,struct tm*) ;
 int strftime (char*,int,char*,struct tm*) ;

__attribute__((used)) static int asf_read_properties(AVFormatContext *s, const GUIDParseTable *g)
{
    ASFContext *asf = s->priv_data;
    AVIOContext *pb = s->pb;
    time_t creation_time;

    avio_rl64(pb);
    avio_skip(pb, 16);
    avio_skip(pb, 8);
    creation_time = avio_rl64(pb);
    if (!(asf->b_flags & ASF_FLAG_BROADCAST)) {
        struct tm tmbuf;
        struct tm *tm;
        char buf[64];


        creation_time /= 10000000;

        creation_time -= 11644473600;
        tm = gmtime_r(&creation_time, &tmbuf);
        if (tm) {
            if (!strftime(buf, sizeof(buf), "%Y-%m-%d %H:%M:%S", tm))
                buf[0] = '\0';
        } else
            buf[0] = '\0';
        if (buf[0]) {
            if (av_dict_set(&s->metadata, "creation_time", buf, 0) < 0)
                av_log(s, AV_LOG_WARNING, "av_dict_set failed.\n");
        }
    }
    asf->nb_packets = avio_rl64(pb);
    asf->duration = avio_rl64(pb) / 10000;
    avio_skip(pb, 8);
    asf->preroll = avio_rl64(pb);
    asf->duration -= asf->preroll;
    asf->b_flags = avio_rl32(pb);
    avio_skip(pb, 4);
    asf->packet_size = avio_rl32(pb);
    avio_skip(pb, 4);

    return 0;
}
