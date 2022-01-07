
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;



void ff_mjpeg_build_huffman_codes(uint8_t *huff_size, uint16_t *huff_code,
                                  const uint8_t *bits_table,
                                  const uint8_t *val_table)
{
    int i, j, k,nb, code, sym;
    huff_size[0] = 0;

    k = 0;
    code = 0;
    for(i=1;i<=16;i++) {
        nb = bits_table[i];
        for(j=0;j<nb;j++) {
            sym = val_table[k++];
            if (sym != 0 || huff_size[sym] == 0) {
                huff_size[sym] = i;
                huff_code[sym] = code;
            }
            code++;
        }
        code <<= 1;
    }
}
