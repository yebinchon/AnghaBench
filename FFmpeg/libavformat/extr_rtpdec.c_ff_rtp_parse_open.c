
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* codecpar; } ;
struct TYPE_8__ {int payload_type; int queue_size; int hostname; int statistics; int * ic; TYPE_3__* st; void* first_rtcp_ntp_time; void* last_rtcp_ntp_time; } ;
struct TYPE_7__ {int codec_id; int sample_rate; } ;
typedef TYPE_2__ RTPDemuxContext ;
typedef TYPE_3__ AVStream ;
typedef int AVFormatContext ;



 int AV_LOG_VERBOSE ;
 void* AV_NOPTS_VALUE ;
 int av_log (int *,int ,char*,int) ;
 TYPE_2__* av_mallocz (int) ;
 int gethostname (int ,int) ;
 int rtp_init_statistics (int *,int ) ;

RTPDemuxContext *ff_rtp_parse_open(AVFormatContext *s1, AVStream *st,
                                   int payload_type, int queue_size)
{
    RTPDemuxContext *s;

    s = av_mallocz(sizeof(RTPDemuxContext));
    if (!s)
        return ((void*)0);
    s->payload_type = payload_type;
    s->last_rtcp_ntp_time = AV_NOPTS_VALUE;
    s->first_rtcp_ntp_time = AV_NOPTS_VALUE;
    s->ic = s1;
    s->st = st;
    s->queue_size = queue_size;

    av_log(s->ic, AV_LOG_VERBOSE, "setting jitter buffer size to %d\n",
           s->queue_size);

    rtp_init_statistics(&s->statistics, 0);
    if (st) {
        switch (st->codecpar->codec_id) {
        case 128:


            if (st->codecpar->sample_rate == 8000)
                st->codecpar->sample_rate = 16000;
            break;
        default:
            break;
        }
    }

    gethostname(s->hostname, sizeof(s->hostname));
    return s;
}
