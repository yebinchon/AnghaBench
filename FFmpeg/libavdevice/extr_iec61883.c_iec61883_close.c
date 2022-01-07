
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct iec61883_data {scalar_t__ type; int raw1394; int bandwidth; int channel; int input_port; int output_port; int node; TYPE_1__* queue_first; TYPE_1__* dv_demux; int iec61883_dv; int mpeg_demux; int iec61883_mpeg2; int mutex; int cond; int receive_task_thread; scalar_t__ thread_loop; } ;
struct TYPE_6__ {struct iec61883_data* priv_data; } ;
struct TYPE_5__ {struct TYPE_5__* buf; struct TYPE_5__* next; } ;
typedef TYPE_1__ DVPacket ;
typedef TYPE_2__ AVFormatContext ;


 scalar_t__ CONFIG_MPEGTS_DEMUXER ;
 scalar_t__ IEC61883_HDV ;
 int av_freep (TYPE_1__**) ;
 int avpriv_mpegts_parse_close (int ) ;
 int iec61883_cmp_disconnect (int ,int ,int ,int ,int ,int ,int ) ;
 int iec61883_dv_fb_close (int ) ;
 int iec61883_dv_fb_stop (int ) ;
 int iec61883_mpeg2_close (int ) ;
 int iec61883_mpeg2_recv_stop (int ) ;
 int pthread_cond_destroy (int *) ;
 int pthread_join (int ,int *) ;
 int pthread_mutex_destroy (int *) ;
 int raw1394_destroy_handle (int ) ;
 int raw1394_get_local_id (int ) ;

__attribute__((used)) static int iec61883_close(AVFormatContext *context)
{
    struct iec61883_data *dv = context->priv_data;
    if (CONFIG_MPEGTS_DEMUXER && dv->type == IEC61883_HDV) {
        iec61883_mpeg2_recv_stop(dv->iec61883_mpeg2);
        iec61883_mpeg2_close(dv->iec61883_mpeg2);
        avpriv_mpegts_parse_close(dv->mpeg_demux);
    } else {
        iec61883_dv_fb_stop(dv->iec61883_dv);
        iec61883_dv_fb_close(dv->iec61883_dv);
        av_freep(&dv->dv_demux);
    }
    while (dv->queue_first) {
        DVPacket *packet = dv->queue_first;
        dv->queue_first = packet->next;
        av_freep(&packet->buf);
        av_freep(&packet);
    }

    iec61883_cmp_disconnect(dv->raw1394, dv->node, dv->output_port,
                            raw1394_get_local_id(dv->raw1394),
                            dv->input_port, dv->channel, dv->bandwidth);

    raw1394_destroy_handle(dv->raw1394);

    return 0;
}
