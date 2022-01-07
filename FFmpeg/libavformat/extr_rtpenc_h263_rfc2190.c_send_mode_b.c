
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct H263State {int quant; int gobn; int mba; int hmv1; int vmv1; int hmv2; int vmv2; } ;
struct H263Info {int src; int i; int u; int s; int a; } ;
struct TYPE_6__ {TYPE_1__* priv_data; } ;
struct TYPE_5__ {scalar_t__ buf; } ;
typedef TYPE_1__ RTPMuxContext ;
typedef int PutBitContext ;
typedef TYPE_2__ AVFormatContext ;


 int ff_rtp_send_data (TYPE_2__*,scalar_t__,int,int) ;
 int flush_put_bits (int *) ;
 int init_put_bits (int *,scalar_t__,int) ;
 int memcpy (scalar_t__,int const*,int) ;
 int put_bits (int *,int,int) ;

__attribute__((used)) static void send_mode_b(AVFormatContext *s1, const struct H263Info *info,
                        const struct H263State *state, const uint8_t *buf,
                        int len, int sbits, int ebits, int m)
{
    RTPMuxContext *s = s1->priv_data;
    PutBitContext pb;

    init_put_bits(&pb, s->buf, 64);
    put_bits(&pb, 1, 1);
    put_bits(&pb, 1, 0);
    put_bits(&pb, 3, sbits);
    put_bits(&pb, 3, ebits);
    put_bits(&pb, 3, info->src);
    put_bits(&pb, 5, state->quant);
    put_bits(&pb, 5, state->gobn);
    put_bits(&pb, 9, state->mba);
    put_bits(&pb, 2, 0);
    put_bits(&pb, 1, info->i);
    put_bits(&pb, 1, info->u);
    put_bits(&pb, 1, info->s);
    put_bits(&pb, 1, info->a);
    put_bits(&pb, 7, state->hmv1);
    put_bits(&pb, 7, state->vmv1);
    put_bits(&pb, 7, state->hmv2);
    put_bits(&pb, 7, state->vmv2);
    flush_put_bits(&pb);
    memcpy(s->buf + 8, buf, len);

    ff_rtp_send_data(s1, s->buf, len + 8, m);
}
