
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_11__ {int * nb_prev_pkt; int * prev_pkt; int out_chunk_size; int stream; int nb_streamid; } ;
struct TYPE_10__ {int size; int data; int member_0; } ;
typedef TYPE_2__ RTMPPacket ;
typedef TYPE_3__ RTMPContext ;
typedef int PutByteContext ;


 int AV_LOG_ERROR ;
 int RTMP_NETWORK_CHANNEL ;
 int RTMP_PT_USER_CONTROL ;
 int av_log (TYPE_1__*,int ,char*) ;
 int bytestream2_init_writer (int *,int ,int ) ;
 int bytestream2_put_be16 (int *,int ) ;
 int bytestream2_put_be32 (int *,int ) ;
 int ff_rtmp_packet_create (TYPE_2__*,int ,int ,int ,int) ;
 int ff_rtmp_packet_destroy (TYPE_2__*) ;
 int ff_rtmp_packet_write (int ,TYPE_2__*,int ,int *,int *) ;

__attribute__((used)) static int write_begin(URLContext *s)
{
    RTMPContext *rt = s->priv_data;
    PutByteContext pbc;
    RTMPPacket spkt = { 0 };
    int ret;


    if ((ret = ff_rtmp_packet_create(&spkt, RTMP_NETWORK_CHANNEL,
                                     RTMP_PT_USER_CONTROL, 0, 6)) < 0) {
        av_log(s, AV_LOG_ERROR, "Unable to create response packet\n");
        return ret;
    }

    bytestream2_init_writer(&pbc, spkt.data, spkt.size);
    bytestream2_put_be16(&pbc, 0);
    bytestream2_put_be32(&pbc, rt->nb_streamid);

    ret = ff_rtmp_packet_write(rt->stream, &spkt, rt->out_chunk_size,
                               &rt->prev_pkt[1], &rt->nb_prev_pkt[1]);

    ff_rtmp_packet_destroy(&spkt);

    return ret;
}
