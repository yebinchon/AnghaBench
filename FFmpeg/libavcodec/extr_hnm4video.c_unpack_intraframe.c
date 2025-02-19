
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int int32_t ;
struct TYPE_6__ {TYPE_1__* priv_data; } ;
struct TYPE_5__ {int width; int height; int* current; } ;
typedef TYPE_1__ Hnm4VideoContext ;
typedef int GetByteContext ;
typedef TYPE_2__ AVCodecContext ;


 int AV_LOG_ERROR ;
 int av_log (TYPE_2__*,int ,char*) ;
 int bytestream2_get_byte (int *) ;
 int bytestream2_get_le16 (int *) ;
 int bytestream2_init (int *,int *,int) ;
 int bytestream2_tell (int *) ;
 int getbit (int *,int*,int*) ;

__attribute__((used)) static void unpack_intraframe(AVCodecContext *avctx, uint8_t *src,
                              uint32_t size)
{
    Hnm4VideoContext *hnm = avctx->priv_data;
    GetByteContext gb;
    uint32_t bitbuf = 0, writeoffset = 0, count = 0;
    uint16_t word;
    int32_t offset;
    int bits = 0;

    bytestream2_init(&gb, src, size);

    while (bytestream2_tell(&gb) < size) {
        if (getbit(&gb, &bitbuf, &bits)) {
            if (writeoffset >= hnm->width * hnm->height) {
                av_log(avctx, AV_LOG_ERROR,
                       "Attempting to write out of bounds\n");
                break;
            }
            hnm->current[writeoffset++] = bytestream2_get_byte(&gb);
        } else {
            if (getbit(&gb, &bitbuf, &bits)) {
                word = bytestream2_get_le16(&gb);
                count = word & 0x07;
                offset = (word >> 3) - 0x2000;
                if (!count)
                    count = bytestream2_get_byte(&gb);
                if (!count)
                    return;
            } else {
                count = getbit(&gb, &bitbuf, &bits) * 2;
                count += getbit(&gb, &bitbuf, &bits);
                offset = bytestream2_get_byte(&gb) - 0x0100;
            }
            count += 2;
            offset += writeoffset;
            if (offset < 0 || offset + count >= hnm->width * hnm->height) {
                av_log(avctx, AV_LOG_ERROR, "Attempting to read out of bounds\n");
                break;
            } else if (writeoffset + count >= hnm->width * hnm->height) {
                av_log(avctx, AV_LOG_ERROR,
                       "Attempting to write out of bounds\n");
                break;
            }
            while (count--) {
                hnm->current[writeoffset++] = hnm->current[offset++];
            }
        }
    }
}
