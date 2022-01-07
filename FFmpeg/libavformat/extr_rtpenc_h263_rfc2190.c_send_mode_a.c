
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct H263Info {int src; int i; int u; int s; int a; int tr; } ;
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

__attribute__((used)) static void send_mode_a(AVFormatContext *s1, const struct H263Info *info,
                        const uint8_t *buf, int len, int ebits, int m)
{
    RTPMuxContext *s = s1->priv_data;
    PutBitContext pb;

    init_put_bits(&pb, s->buf, 32);
    put_bits(&pb, 1, 0);
    put_bits(&pb, 1, 0);
    put_bits(&pb, 3, 0);
    put_bits(&pb, 3, ebits);
    put_bits(&pb, 3, info->src);
    put_bits(&pb, 1, info->i);
    put_bits(&pb, 1, info->u);
    put_bits(&pb, 1, info->s);
    put_bits(&pb, 1, info->a);
    put_bits(&pb, 4, 0);
    put_bits(&pb, 2, 0);
    put_bits(&pb, 3, 0);
    put_bits(&pb, 8, info->tr);
    flush_put_bits(&pb);
    memcpy(s->buf + 4, buf, len);

    ff_rtp_send_data(s1, s->buf, len + 4, m);
}
