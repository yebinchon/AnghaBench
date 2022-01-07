
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ timestamp ;
typedef int int64_t ;
struct TYPE_12__ {TYPE_2__* priv_data; } ;
struct TYPE_11__ {int mux_rate; scalar_t__ is_mpeg2; } ;
struct TYPE_10__ {int buf; } ;
typedef TYPE_1__ PutBitContext ;
typedef TYPE_2__ MpegMuxContext ;
typedef TYPE_3__ AVFormatContext ;


 int PACK_START_CODE ;
 int flush_put_bits (TYPE_1__*) ;
 int init_put_bits (TYPE_1__*,int *,int) ;
 int put_bits (TYPE_1__*,int,int) ;
 int put_bits32 (TYPE_1__*,int ) ;
 int put_bits_ptr (TYPE_1__*) ;

__attribute__((used)) static int put_pack_header(AVFormatContext *ctx, uint8_t *buf,
                           int64_t timestamp)
{
    MpegMuxContext *s = ctx->priv_data;
    PutBitContext pb;

    init_put_bits(&pb, buf, 128);

    put_bits32(&pb, PACK_START_CODE);
    if (s->is_mpeg2)
        put_bits(&pb, 2, 0x1);
    else
        put_bits(&pb, 4, 0x2);
    put_bits(&pb, 3, (uint32_t)((timestamp >> 30) & 0x07));
    put_bits(&pb, 1, 1);
    put_bits(&pb, 15, (uint32_t)((timestamp >> 15) & 0x7fff));
    put_bits(&pb, 1, 1);
    put_bits(&pb, 15, (uint32_t)((timestamp) & 0x7fff));
    put_bits(&pb, 1, 1);
    if (s->is_mpeg2)

        put_bits(&pb, 9, 0);
    put_bits(&pb, 1, 1);
    put_bits(&pb, 22, s->mux_rate);
    put_bits(&pb, 1, 1);
    if (s->is_mpeg2) {
        put_bits(&pb, 1, 1);
        put_bits(&pb, 5, 0x1f);
        put_bits(&pb, 3, 0);
    }
    flush_put_bits(&pb);
    return put_bits_ptr(&pb) - pb.buf;
}
