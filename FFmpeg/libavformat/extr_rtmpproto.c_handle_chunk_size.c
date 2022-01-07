
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_3__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_10__ {int in_chunk_size; void* out_chunk_size; int * nb_prev_pkt; int * prev_pkt; int stream; int is_input; } ;
struct TYPE_9__ {int size; int data; } ;
typedef TYPE_2__ RTMPPacket ;
typedef TYPE_3__ RTMPContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 void* AV_RB32 (int ) ;
 int av_log (TYPE_1__*,int ,char*,int) ;
 int ff_rtmp_packet_write (int ,TYPE_2__*,void*,int *,int *) ;

__attribute__((used)) static int handle_chunk_size(URLContext *s, RTMPPacket *pkt)
{
    RTMPContext *rt = s->priv_data;
    int ret;

    if (pkt->size < 4) {
        av_log(s, AV_LOG_ERROR,
               "Too short chunk size change packet (%d)\n",
               pkt->size);
        return AVERROR_INVALIDDATA;
    }

    if (!rt->is_input) {


        if ((ret = ff_rtmp_packet_write(rt->stream, pkt, rt->out_chunk_size,
                                        &rt->prev_pkt[1], &rt->nb_prev_pkt[1])) < 0)
            return ret;
        rt->out_chunk_size = AV_RB32(pkt->data);
    }

    rt->in_chunk_size = AV_RB32(pkt->data);
    if (rt->in_chunk_size <= 0) {
        av_log(s, AV_LOG_ERROR, "Incorrect chunk size %d\n",
               rt->in_chunk_size);
        return AVERROR_INVALIDDATA;
    }
    av_log(s, AV_LOG_DEBUG, "New incoming chunk size = %d\n",
           rt->in_chunk_size);

    return 0;
}
