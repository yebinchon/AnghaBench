
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int err_recognition; TYPE_2__* priv_data; } ;
struct TYPE_7__ {int crctab; } ;
struct TYPE_6__ {int size_in_bits; scalar_t__ buffer; } ;
typedef TYPE_1__ GetBitContext ;
typedef TYPE_2__ DCAContext ;
typedef TYPE_3__ AVCodecContext ;


 int AV_EF_CAREFUL ;
 int AV_EF_CRCCHECK ;
 scalar_t__ av_crc (int ,int,scalar_t__,int) ;

__attribute__((used)) static inline int ff_dca_check_crc(AVCodecContext *avctx, GetBitContext *s,
                                   int p1, int p2)
{
    DCAContext *dca = avctx->priv_data;

    if (!(avctx->err_recognition & (AV_EF_CRCCHECK | AV_EF_CAREFUL)))
        return 0;
    if (((p1 | p2) & 7) || p1 < 0 || p2 > s->size_in_bits || p2 - p1 < 16)
        return -1;
    if (av_crc(dca->crctab, 0xffff, s->buffer + p1 / 8, (p2 - p1) / 8))
        return -1;
    return 0;
}
