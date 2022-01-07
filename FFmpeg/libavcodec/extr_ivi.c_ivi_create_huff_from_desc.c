
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int VLC ;
struct TYPE_3__ {int num_rows; int* xbits; } ;
typedef TYPE_1__ IVIHuffDesc ;


 int AVERROR_INVALIDDATA ;
 int INIT_VLC_LE ;
 int INIT_VLC_USE_NEW_STATIC ;
 int IVI_VLC_BITS ;
 int init_vlc (int *,int,int,int*,int,int,int *,int,int,int) ;
 int inv_bits (int,int) ;

__attribute__((used)) static int ivi_create_huff_from_desc(const IVIHuffDesc *cb, VLC *vlc, int flag)
{
    int pos, i, j, codes_per_row, prefix, not_last_row;
    uint16_t codewords[256];
    uint8_t bits[256];

    pos = 0;

    for (i = 0; i < cb->num_rows; i++) {
        codes_per_row = 1 << cb->xbits[i];
        not_last_row = (i != cb->num_rows - 1);
        prefix = ((1 << i) - 1) << (cb->xbits[i] + not_last_row);

        for (j = 0; j < codes_per_row; j++) {
            if (pos >= 256)
                break;

            bits[pos] = i + cb->xbits[i] + not_last_row;
            if (bits[pos] > IVI_VLC_BITS)
                return AVERROR_INVALIDDATA;

            codewords[pos] = inv_bits((prefix | j), bits[pos]);
            if (!bits[pos])
                bits[pos] = 1;

            pos++;
        }
    }


    return init_vlc(vlc, IVI_VLC_BITS, pos, bits, 1, 1, codewords, 2, 2,
                    (flag ? INIT_VLC_USE_NEW_STATIC : 0) | INIT_VLC_LE);
}
