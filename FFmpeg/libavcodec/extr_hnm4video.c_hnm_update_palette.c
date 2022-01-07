
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {int version; int* palette; } ;
typedef TYPE_1__ Hnm4VideoContext ;
typedef int GetByteContext ;
typedef TYPE_2__ AVCodecContext ;


 int bytestream2_get_be24 (int *) ;
 int bytestream2_get_byte (int *) ;
 int bytestream2_init (int *,int*,scalar_t__) ;
 scalar_t__ bytestream2_tell (int *) ;

__attribute__((used)) static void hnm_update_palette(AVCodecContext *avctx, uint8_t *src,
                               uint32_t size)
{
    Hnm4VideoContext *hnm = avctx->priv_data;
    GetByteContext gb;
    uint8_t start, writeoffset;
    uint16_t count;
    int eight_bit_colors;

    eight_bit_colors = src[7] & 0x80 && hnm->version == 0x4a;


    bytestream2_init(&gb, src + 8, size - 8);

    while (bytestream2_tell(&gb) < size - 8) {
        start = bytestream2_get_byte(&gb);
        count = bytestream2_get_byte(&gb);
        if (start == 255 && count == 255)
            break;
        if (count == 0)
            count = 256;
        writeoffset = start;
        while (count > 0) {
            hnm->palette[writeoffset] = bytestream2_get_be24(&gb);
            if (!eight_bit_colors)
                hnm->palette[writeoffset] <<= 2;
            hnm->palette[writeoffset] |= (0xFFU << 24);
            count--;
            writeoffset++;
        }
    }
}
