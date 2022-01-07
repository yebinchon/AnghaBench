
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int name ;
struct TYPE_9__ {int * nb_prev_pkt; int * prev_pkt; int out_chunk_size; int stream; } ;
struct TYPE_8__ {scalar_t__ type; int size; int data; } ;
typedef TYPE_1__ RTMPPacket ;
typedef TYPE_2__ RTMPContext ;
typedef int GetByteContext ;


 scalar_t__ RTMP_PT_INVOKE ;
 int add_tracked_method (TYPE_2__*,char*,double) ;
 int bytestream2_init (int *,int ,int ) ;
 int ff_amf_read_number (int *,double*) ;
 int ff_amf_read_string (int *,char*,int,int*) ;
 int ff_rtmp_packet_destroy (TYPE_1__*) ;
 int ff_rtmp_packet_write (int ,TYPE_1__*,int ,int *,int *) ;

__attribute__((used)) static int rtmp_send_packet(RTMPContext *rt, RTMPPacket *pkt, int track)
{
    int ret;

    if (pkt->type == RTMP_PT_INVOKE && track) {
        GetByteContext gbc;
        char name[128];
        double pkt_id;
        int len;

        bytestream2_init(&gbc, pkt->data, pkt->size);
        if ((ret = ff_amf_read_string(&gbc, name, sizeof(name), &len)) < 0)
            goto fail;

        if ((ret = ff_amf_read_number(&gbc, &pkt_id)) < 0)
            goto fail;

        if ((ret = add_tracked_method(rt, name, pkt_id)) < 0)
            goto fail;
    }

    ret = ff_rtmp_packet_write(rt->stream, pkt, rt->out_chunk_size,
                               &rt->prev_pkt[1], &rt->nb_prev_pkt[1]);
fail:
    ff_rtmp_packet_destroy(pkt);
    return ret;
}
