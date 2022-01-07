
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_9__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ URLContext ;
struct TYPE_13__ {scalar_t__ size; } ;
struct TYPE_12__ {scalar_t__ state; int* nb_prev_pkt; int stream; TYPE_9__* flv_data; TYPE_9__** prev_pkt; TYPE_9__ out_pkt; int is_input; } ;
typedef TYPE_2__ RTMPContext ;


 scalar_t__ STATE_FCPUBLISH ;
 scalar_t__ STATE_HANDSHAKED ;
 int av_freep (TYPE_9__**) ;
 int ff_rtmp_packet_destroy (TYPE_9__*) ;
 int ffurl_close (int ) ;
 int free_tracked_methods (TYPE_2__*) ;
 int gen_delete_stream (TYPE_1__*,TYPE_2__*) ;
 int gen_fcunpublish_stream (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static int rtmp_close(URLContext *h)
{
    RTMPContext *rt = h->priv_data;
    int ret = 0, i, j;

    if (!rt->is_input) {
        rt->flv_data = ((void*)0);
        if (rt->out_pkt.size)
            ff_rtmp_packet_destroy(&rt->out_pkt);
        if (rt->state > STATE_FCPUBLISH)
            ret = gen_fcunpublish_stream(h, rt);
    }
    if (rt->state > STATE_HANDSHAKED)
        ret = gen_delete_stream(h, rt);
    for (i = 0; i < 2; i++) {
        for (j = 0; j < rt->nb_prev_pkt[i]; j++)
            ff_rtmp_packet_destroy(&rt->prev_pkt[i][j]);
        av_freep(&rt->prev_pkt[i]);
    }

    free_tracked_methods(rt);
    av_freep(&rt->flv_data);
    ffurl_close(rt->stream);
    return ret;
}
