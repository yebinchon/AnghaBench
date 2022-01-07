
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ i_payload; } ;
typedef TYPE_1__ xavs_nal_t ;
typedef int uint8_t ;
struct TYPE_12__ {int sei_size; int sei; } ;
typedef TYPE_2__ XavsContext ;
struct TYPE_14__ {TYPE_2__* priv_data; } ;
struct TYPE_13__ {int size; int * data; } ;
typedef TYPE_3__ AVPacket ;
typedef TYPE_4__ AVCodecContext ;


 int AV_INPUT_BUFFER_MIN_SIZE ;
 int ff_alloc_packet2 (TYPE_4__*,TYPE_3__*,int,int ) ;
 int memcpy (int *,int ,int) ;
 int xavs_nal_encode (int *,int*,int,TYPE_1__*) ;

__attribute__((used)) static int encode_nals(AVCodecContext *ctx, AVPacket *pkt,
                       xavs_nal_t *nals, int nnal)
{
    XavsContext *x4 = ctx->priv_data;
    uint8_t *p;
    int i, s, ret, size = x4->sei_size + AV_INPUT_BUFFER_MIN_SIZE;

    if (!nnal)
        return 0;

    for (i = 0; i < nnal; i++)
        size += nals[i].i_payload;

    if ((ret = ff_alloc_packet2(ctx, pkt, size, 0)) < 0)
        return ret;
    p = pkt->data;


    if (x4->sei_size > 0 && nnal > 0) {
        memcpy(p, x4->sei, x4->sei_size);
        p += x4->sei_size;
        x4->sei_size = 0;
    }

    for (i = 0; i < nnal; i++) {
        s = xavs_nal_encode(p, &size, 1, nals + i);
        if (s < 0)
            return -1;
        p += s;
    }
    pkt->size = p - pkt->data;

    return 1;
}
