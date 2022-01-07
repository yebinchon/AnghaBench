
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int input_size; int word_bits; int * buffer; int gb; int avctx; int * input; } ;
typedef int PutBitContext ;
typedef TYPE_1__ DBEContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int AV_RB16 (int *) ;
 int AV_RB24 (int *) ;
 int AV_WB16 (int *,int) ;
 int AV_WB24 (int *,int) ;
 int av_assert0 (int) ;
 int av_log (int ,int ,char*) ;
 int flush_put_bits (int *) ;
 int init_get_bits (int *,int *,int) ;
 int init_put_bits (int *,int *,int) ;
 int put_bits (int *,int,int) ;

__attribute__((used)) static int convert_input(DBEContext *s, int nb_words, int key)
{
    uint8_t *src = s->input;
    uint8_t *dst = s->buffer;
    PutBitContext pb;
    int i;

    av_assert0(nb_words <= 1024u);

    if (nb_words > s->input_size) {
        av_log(s->avctx, AV_LOG_ERROR, "Packet too short\n");
        return AVERROR_INVALIDDATA;
    }

    switch (s->word_bits) {
    case 16:
        for (i = 0; i < nb_words; i++, src += 2, dst += 2)
            AV_WB16(dst, AV_RB16(src) ^ key);
        break;
    case 20:
        init_put_bits(&pb, s->buffer, sizeof(s->buffer));
        for (i = 0; i < nb_words; i++, src += 3)
            put_bits(&pb, 20, AV_RB24(src) >> 4 ^ key);
        flush_put_bits(&pb);
        break;
    case 24:
        for (i = 0; i < nb_words; i++, src += 3, dst += 3)
            AV_WB24(dst, AV_RB24(src) ^ key);
        break;
    default:
        av_assert0(0);
    }

    return init_get_bits(&s->gb, s->buffer, nb_words * s->word_bits);
}
