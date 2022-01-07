
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* priv_data; } ;
struct TYPE_5__ {int** len; int planes; int * vlc; scalar_t__ (* huff_build ) (int *,int*) ;} ;
typedef TYPE_1__ MagicYUVContext ;
typedef int GetBitContext ;
typedef TYPE_2__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int av_log (TYPE_2__*,int ,char*) ;
 int get_bits (int *,int) ;
 int get_bits_left (int *) ;
 int get_bitsz (int *,int) ;
 int memset (int**,int ,int) ;
 scalar_t__ stub1 (int *,int*) ;

__attribute__((used)) static int build_huffman(AVCodecContext *avctx, GetBitContext *gbit, int max)
{
    MagicYUVContext *s = avctx->priv_data;
    int i = 0, j = 0, k;

    memset(s->len, 0, sizeof(s->len));
    while (get_bits_left(gbit) >= 8) {
        int b = get_bits(gbit, 1);
        int x = get_bits(gbit, 7);
        int l = get_bitsz(gbit, b * 8) + 1;

        for (k = 0; k < l; k++)
            if (j + k < max)
                s->len[i][j + k] = x;

        j += l;
        if (j == max) {
            j = 0;
            if (s->huff_build(&s->vlc[i], s->len[i])) {
                av_log(avctx, AV_LOG_ERROR, "Cannot build Huffman codes\n");
                return AVERROR_INVALIDDATA;
            }
            i++;
            if (i == s->planes) {
                break;
            }
        } else if (j > max) {
            av_log(avctx, AV_LOG_ERROR, "Invalid Huffman codes\n");
            return AVERROR_INVALIDDATA;
        }
    }

    if (i != s->planes) {
        av_log(avctx, AV_LOG_ERROR, "Huffman tables too short\n");
        return AVERROR_INVALIDDATA;
    }

    return 0;
}
