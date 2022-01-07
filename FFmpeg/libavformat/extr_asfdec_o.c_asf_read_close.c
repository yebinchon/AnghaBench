
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int avpkt; } ;
struct TYPE_11__ {TYPE_1__ pkt; } ;
struct TYPE_10__ {int nb_streams; TYPE_5__** asf_st; TYPE_2__* asf_sd; } ;
struct TYPE_9__ {TYPE_4__* priv_data; } ;
struct TYPE_8__ {int asf_met; } ;
typedef TYPE_3__ AVFormatContext ;
typedef TYPE_4__ ASFContext ;


 int ASF_MAX_STREAMS ;
 int av_dict_free (int *) ;
 int av_freep (TYPE_5__**) ;
 int av_packet_unref (int *) ;

__attribute__((used)) static int asf_read_close(AVFormatContext *s)
{
    ASFContext *asf = s->priv_data;
    int i;

    for (i = 0; i < ASF_MAX_STREAMS; i++) {
        av_dict_free(&asf->asf_sd[i].asf_met);
        if (i < asf->nb_streams) {
            av_packet_unref(&asf->asf_st[i]->pkt.avpkt);
            av_freep(&asf->asf_st[i]);
        }
    }

    asf->nb_streams = 0;
    return 0;
}
