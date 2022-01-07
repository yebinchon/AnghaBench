
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_15__ {TYPE_3__* b_frame_ref; } ;
typedef TYPE_1__ UnpackBFramesBSFContext ;
struct TYPE_18__ {TYPE_1__* priv_data; } ;
struct TYPE_17__ {char* data; int size; } ;
struct TYPE_16__ {char* data; int size; TYPE_3__* buf; } ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVBufferRef ;
typedef TYPE_4__ AVBSFContext ;


 int AVERROR (int ) ;
 int AV_LOG_DEBUG ;
 int AV_LOG_WARNING ;
 int ENOMEM ;
 scalar_t__ MAX_NVOP_SIZE ;
 TYPE_3__* av_buffer_ref (TYPE_3__*) ;
 int av_buffer_unref (TYPE_3__**) ;
 int av_log (TYPE_4__*,int ,char*,...) ;
 int av_packet_make_writable (TYPE_2__*) ;
 int av_packet_unref (TYPE_2__*) ;
 int ff_bsf_get_packet_ref (TYPE_4__*,TYPE_2__*) ;
 int scan_buffer (char*,int,int*,int*,int*) ;

__attribute__((used)) static int mpeg4_unpack_bframes_filter(AVBSFContext *ctx, AVPacket *pkt)
{
    UnpackBFramesBSFContext *s = ctx->priv_data;
    int pos_p = -1, nb_vop = 0, pos_vop2 = -1, ret = 0;

    ret = ff_bsf_get_packet_ref(ctx, pkt);
    if (ret < 0)
        return ret;

    scan_buffer(pkt->data, pkt->size, &pos_p, &nb_vop, &pos_vop2);
    av_log(ctx, AV_LOG_DEBUG, "Found %d VOP startcode(s) in this packet.\n", nb_vop);

    if (pos_vop2 >= 0) {
        if (s->b_frame_ref) {
            av_log(ctx, AV_LOG_WARNING,
                   "Missing one N-VOP packet, discarding one B-frame.\n");
            av_buffer_unref(&s->b_frame_ref);
        }

        s->b_frame_ref = av_buffer_ref(pkt->buf);
        if (!s->b_frame_ref) {
            ret = AVERROR(ENOMEM);
            goto fail;
        }
        s->b_frame_ref->data = pkt->data + pos_vop2;
        s->b_frame_ref->size = pkt->size - pos_vop2;
    }

    if (nb_vop > 2) {
        av_log(ctx, AV_LOG_WARNING,
       "Found %d VOP headers in one packet, only unpacking one.\n", nb_vop);
    }

    if (nb_vop == 1 && s->b_frame_ref) {
        AVBufferRef *tmp = pkt->buf;


        tmp->data = pkt->data;
        tmp->size = pkt->size;


        pkt->buf = s->b_frame_ref;
        pkt->data = s->b_frame_ref->data;
        pkt->size = s->b_frame_ref->size;


        s->b_frame_ref = tmp;

        if (s->b_frame_ref->size <= MAX_NVOP_SIZE) {

            av_log(ctx, AV_LOG_DEBUG, "Skipping N-VOP.\n");
            av_buffer_unref(&s->b_frame_ref);
        }
    } else if (nb_vop >= 2) {

        pkt->size = pos_vop2;
    } else if (pos_p >= 0) {
        ret = av_packet_make_writable(pkt);
        if (ret < 0)
            goto fail;
        av_log(ctx, AV_LOG_DEBUG, "Updating DivX userdata (remove trailing 'p').\n");

        pkt->data[pos_p] = '\0';
    } else {

    }

fail:
    if (ret < 0)
        av_packet_unref(pkt);

    return ret;
}
