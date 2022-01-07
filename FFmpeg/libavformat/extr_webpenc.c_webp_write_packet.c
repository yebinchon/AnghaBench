
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int using_webp_anim_encoder; int wrote_webp_header; int frame_count; int last_pkt; } ;
typedef TYPE_1__ WebpContext ;
struct TYPE_11__ {int pb; TYPE_1__* priv_data; } ;
struct TYPE_10__ {int pts; int size; int data; } ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFormatContext ;


 int av_packet_ref (int *,TYPE_2__*) ;
 int avio_write (int ,int ,int ) ;
 int flush (TYPE_3__*,int ,int ) ;
 int is_animated_webp_packet (TYPE_2__*) ;

__attribute__((used)) static int webp_write_packet(AVFormatContext *s, AVPacket *pkt)
{
    WebpContext *w = s->priv_data;
    w->using_webp_anim_encoder |= is_animated_webp_packet(pkt);

    if (w->using_webp_anim_encoder) {
        avio_write(s->pb, pkt->data, pkt->size);
        w->wrote_webp_header = 1;
    } else {
        int ret;
        if ((ret = flush(s, 0, pkt->pts)) < 0)
            return ret;
        av_packet_ref(&w->last_pkt, pkt);
    }
    ++w->frame_count;

    return 0;
}
