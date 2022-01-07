
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int spillover_nbits; int nb_superframes; int sframe_cache_size; int skip_bits_next; int pb; int sframe_cache; int gb; } ;
typedef TYPE_1__ WMAVoiceContext ;
struct TYPE_10__ {int block_align; TYPE_1__* priv_data; } ;
struct TYPE_9__ {int size; int data; } ;
typedef int GetBitContext ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVCodecContext ;


 int SFRAME_CACHE_MAXSIZE ;
 int copy_bits (int *,int ,int,int *,int) ;
 int flush_put_bits (int *) ;
 int get_bits_count (int *) ;
 int get_bits_left (int *) ;
 int init_get_bits8 (int *,int ,int) ;
 int init_put_bits (int *,int ,int ) ;
 int parse_packet_header (TYPE_1__*) ;
 int skip_bits (int *,int) ;
 int skip_bits_long (int *,int) ;
 int synth_superframe (TYPE_3__*,void*,int*) ;

__attribute__((used)) static int wmavoice_decode_packet(AVCodecContext *ctx, void *data,
                                  int *got_frame_ptr, AVPacket *avpkt)
{
    WMAVoiceContext *s = ctx->priv_data;
    GetBitContext *gb = &s->gb;
    int size, res, pos;






    for (size = avpkt->size; size > ctx->block_align; size -= ctx->block_align);
    init_get_bits8(&s->gb, avpkt->data, size);




    if (!(size % ctx->block_align)) {
        if (!size) {
            s->spillover_nbits = 0;
            s->nb_superframes = 0;
        } else {
            if ((res = parse_packet_header(s)) < 0)
                return res;
            s->nb_superframes = res;
        }




        if (s->sframe_cache_size > 0) {
            int cnt = get_bits_count(gb);
            if (cnt + s->spillover_nbits > avpkt->size * 8) {
                s->spillover_nbits = avpkt->size * 8 - cnt;
            }
            copy_bits(&s->pb, avpkt->data, size, gb, s->spillover_nbits);
            flush_put_bits(&s->pb);
            s->sframe_cache_size += s->spillover_nbits;
            if ((res = synth_superframe(ctx, data, got_frame_ptr)) == 0 &&
                *got_frame_ptr) {
                cnt += s->spillover_nbits;
                s->skip_bits_next = cnt & 7;
                res = cnt >> 3;
                return res;
            } else
                skip_bits_long (gb, s->spillover_nbits - cnt +
                                get_bits_count(gb));
        } else if (s->spillover_nbits) {
            skip_bits_long(gb, s->spillover_nbits);
        }
    } else if (s->skip_bits_next)
        skip_bits(gb, s->skip_bits_next);


    s->sframe_cache_size = 0;
    s->skip_bits_next = 0;
    pos = get_bits_left(gb);
    if (s->nb_superframes-- == 0) {
        *got_frame_ptr = 0;
        return size;
    } else if (s->nb_superframes > 0) {
        if ((res = synth_superframe(ctx, data, got_frame_ptr)) < 0) {
            return res;
        } else if (*got_frame_ptr) {
            int cnt = get_bits_count(gb);
            s->skip_bits_next = cnt & 7;
            res = cnt >> 3;
            return res;
        }
    } else if ((s->sframe_cache_size = pos) > 0) {

        init_put_bits(&s->pb, s->sframe_cache, SFRAME_CACHE_MAXSIZE);
        copy_bits(&s->pb, avpkt->data, size, gb, s->sframe_cache_size);


    }

    return size;
}
