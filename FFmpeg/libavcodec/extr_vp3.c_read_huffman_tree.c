
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int entries; size_t hti; int hbits; int huff_code_size; int*** huffman_table; } ;
typedef TYPE_1__ Vp3DecodeContext ;
struct TYPE_7__ {TYPE_1__* priv_data; } ;
typedef int GetBitContext ;
typedef TYPE_2__ AVCodecContext ;


 int AV_LOG_ERROR ;
 int av_log (TYPE_2__*,int ,char*) ;
 int ff_dlog (TYPE_2__*,char*,size_t,int,int,int,int) ;
 int get_bits (int *,int) ;
 scalar_t__ get_bits1 (int *) ;

__attribute__((used)) static int read_huffman_tree(AVCodecContext *avctx, GetBitContext *gb)
{
    Vp3DecodeContext *s = avctx->priv_data;

    if (get_bits1(gb)) {
        int token;
        if (s->entries >= 32) {
            av_log(avctx, AV_LOG_ERROR, "huffman tree overflow\n");
            return -1;
        }
        token = get_bits(gb, 5);
        ff_dlog(avctx, "hti %d hbits %x token %d entry : %d size %d\n",
                s->hti, s->hbits, token, s->entries, s->huff_code_size);
        s->huffman_table[s->hti][token][0] = s->hbits;
        s->huffman_table[s->hti][token][1] = s->huff_code_size;
        s->entries++;
    } else {
        if (s->huff_code_size >= 32) {
            av_log(avctx, AV_LOG_ERROR, "huffman tree overflow\n");
            return -1;
        }
        s->huff_code_size++;
        s->hbits <<= 1;
        if (read_huffman_tree(avctx, gb))
            return -1;
        s->hbits |= 1;
        if (read_huffman_tree(avctx, gb))
            return -1;
        s->hbits >>= 1;
        s->huff_code_size--;
    }
    return 0;
}
