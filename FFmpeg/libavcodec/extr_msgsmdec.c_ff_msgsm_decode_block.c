
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int16_t ;
typedef int GetBitContext ;
typedef int AVCodecContext ;


 int GSM_FRAME_SIZE ;
 int GSM_MS_BLOCK_SIZE ;
 int gsm_decode_block (int *,int *,int *,int) ;
 int init_get_bits (int *,int const*,int) ;

int ff_msgsm_decode_block(AVCodecContext *avctx, int16_t *samples,
                          const uint8_t *buf, int mode)
{
    int res;
    GetBitContext gb;
    init_get_bits(&gb, buf, GSM_MS_BLOCK_SIZE * 8);
    res = gsm_decode_block(avctx, samples, &gb, mode);
    if (res < 0)
        return res;
    return gsm_decode_block(avctx, samples + GSM_FRAME_SIZE, &gb, mode);
}
