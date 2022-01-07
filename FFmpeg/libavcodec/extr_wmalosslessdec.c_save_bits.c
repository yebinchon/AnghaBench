
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int frame_offset; int num_saved_bits; int max_frame_size; int packet_loss; int gb; int frame_data; int pb; int avctx; } ;
typedef TYPE_1__ WmallDecodeCtx ;
struct TYPE_9__ {scalar_t__ buffer; } ;
typedef int PutBitContext ;
typedef TYPE_2__ GetBitContext ;


 int FFMIN (int,int) ;
 int avpriv_copy_bits (int *,scalar_t__,int) ;
 int avpriv_request_sample (int ,char*) ;
 int flush_put_bits (int *) ;
 int get_bits (TYPE_2__*,int) ;
 int get_bits_count (TYPE_2__*) ;
 int init_get_bits (int *,int ,int) ;
 int init_put_bits (int *,int ,int) ;
 int put_bits (int *,int,int ) ;
 int skip_bits (int *,int) ;
 int skip_bits_long (TYPE_2__*,int) ;

__attribute__((used)) static void save_bits(WmallDecodeCtx *s, GetBitContext* gb, int len,
                      int append)
{
    int buflen;
    PutBitContext tmp;





    if (!append) {
        s->frame_offset = get_bits_count(gb) & 7;
        s->num_saved_bits = s->frame_offset;
        init_put_bits(&s->pb, s->frame_data, s->max_frame_size);
    }

    buflen = (s->num_saved_bits + len + 8) >> 3;

    if (len <= 0 || buflen > s->max_frame_size) {
        avpriv_request_sample(s->avctx, "Too small input buffer");
        s->packet_loss = 1;
        s->num_saved_bits = 0;
        return;
    }

    s->num_saved_bits += len;
    if (!append) {
        avpriv_copy_bits(&s->pb, gb->buffer + (get_bits_count(gb) >> 3),
                         s->num_saved_bits);
    } else {
        int align = 8 - (get_bits_count(gb) & 7);
        align = FFMIN(align, len);
        put_bits(&s->pb, align, get_bits(gb, align));
        len -= align;
        avpriv_copy_bits(&s->pb, gb->buffer + (get_bits_count(gb) >> 3), len);
    }
    skip_bits_long(gb, len);

    tmp = s->pb;
    flush_put_bits(&tmp);

    init_get_bits(&s->gb, s->frame_data, s->num_saved_bits);
    skip_bits(&s->gb, s->frame_offset);
}
