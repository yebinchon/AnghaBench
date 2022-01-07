
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {int pb; } ;
struct TYPE_12__ {int priv_data; TYPE_1__* codecpar; int duration; int start_time; scalar_t__ id; } ;
struct TYPE_11__ {int codec_type; int bit_rate; } ;
typedef TYPE_2__ AVStream ;
typedef int AVIOContext ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int ) ;
 int AVMEDIA_TYPE_DATA ;
 int ENOMEM ;
 TYPE_2__* avformat_new_stream (TYPE_3__*,int *) ;
 int avio_rb16 (int *) ;
 unsigned int avio_rb32 (int *) ;
 int avpriv_request_sample (TYPE_3__*,char*,int) ;
 int ff_rm_alloc_rmstream () ;
 int ff_rm_read_mdpr_codecdata (TYPE_3__*,int ,TYPE_2__*,int ,unsigned int,int *) ;

__attribute__((used)) static int rm_read_multi(AVFormatContext *s, AVIOContext *pb,
                         AVStream *st, char *mime)
{
    int number_of_streams = avio_rb16(pb);
    int number_of_mdpr;
    int i, ret;
    unsigned size2;
    for (i = 0; i<number_of_streams; i++)
        avio_rb16(pb);
    number_of_mdpr = avio_rb16(pb);
    if (number_of_mdpr != 1) {
        avpriv_request_sample(s, "MLTI with multiple (%d) MDPR", number_of_mdpr);
    }
    for (i = 0; i < number_of_mdpr; i++) {
        AVStream *st2;
        if (i > 0) {
            st2 = avformat_new_stream(s, ((void*)0));
            if (!st2) {
                ret = AVERROR(ENOMEM);
                return ret;
            }
            st2->id = st->id + (i<<16);
            st2->codecpar->bit_rate = st->codecpar->bit_rate;
            st2->start_time = st->start_time;
            st2->duration = st->duration;
            st2->codecpar->codec_type = AVMEDIA_TYPE_DATA;
            st2->priv_data = ff_rm_alloc_rmstream();
            if (!st2->priv_data)
                return AVERROR(ENOMEM);
        } else
            st2 = st;

        size2 = avio_rb32(pb);
        ret = ff_rm_read_mdpr_codecdata(s, s->pb, st2, st2->priv_data,
                                        size2, ((void*)0));
        if (ret < 0)
            return ret;
    }
    return 0;
}
