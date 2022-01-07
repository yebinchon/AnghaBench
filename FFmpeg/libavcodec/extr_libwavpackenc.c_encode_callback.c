
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_7__ {int size; scalar_t__ data; } ;
struct TYPE_6__ {TYPE_1__* priv_data; } ;
struct TYPE_5__ {int user_size; int got_output; TYPE_4__* pkt; } ;
typedef TYPE_1__ LibWavpackContext ;
typedef TYPE_2__ AVCodecContext ;


 int AV_LOG_ERROR ;
 int av_grow_packet (TYPE_4__*,int) ;
 int av_log (TYPE_2__*,int ,char*) ;
 int memcpy (scalar_t__,void*,int) ;

__attribute__((used)) static int encode_callback(void *id, void *data, int32_t count)
{
    AVCodecContext *avctx = id;
    LibWavpackContext *s = avctx->priv_data;
    int ret, offset = s->pkt->size;

    if (s->user_size) {
        if (s->user_size - count < s->pkt->size) {
            av_log(avctx, AV_LOG_ERROR, "Provided packet too small.\n");
            return 0;
        }
        s->pkt->size += count;
    } else {
        ret = av_grow_packet(s->pkt, count);
        if (ret < 0) {
            av_log(avctx, AV_LOG_ERROR, "Error allocating output packet.\n");
            return 0;
        }
    }

    memcpy(s->pkt->data + offset, data, count);

    s->got_output = 1;

    return 1;
}
