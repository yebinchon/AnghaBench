
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_4__ {int (* bswap_buf ) (int *,int const*,int) ;} ;
struct TYPE_5__ {int flag; int* offset1; int* offset2; int* pulseval; int* pulseoff; void** pulsepos; void** vector; scalar_t__ buffer; TYPE_1__ bdsp; } ;
typedef TYPE_2__ TSContext ;
typedef int GetBitContext ;


 int get_bits (int *,int) ;
 int get_bits1 (int *) ;
 void* get_bits_long (int *,int) ;
 int init_get_bits (int *,scalar_t__,int) ;
 int stub1 (int *,int const*,int) ;
 void*** ts_codebook ;

__attribute__((used)) static void truespeech_read_frame(TSContext *dec, const uint8_t *input)
{
    GetBitContext gb;

    dec->bdsp.bswap_buf((uint32_t *) dec->buffer, (const uint32_t *) input, 8);
    init_get_bits(&gb, dec->buffer, 32 * 8);

    dec->vector[7] = ts_codebook[7][get_bits(&gb, 3)];
    dec->vector[6] = ts_codebook[6][get_bits(&gb, 3)];
    dec->vector[5] = ts_codebook[5][get_bits(&gb, 3)];
    dec->vector[4] = ts_codebook[4][get_bits(&gb, 4)];
    dec->vector[3] = ts_codebook[3][get_bits(&gb, 4)];
    dec->vector[2] = ts_codebook[2][get_bits(&gb, 4)];
    dec->vector[1] = ts_codebook[1][get_bits(&gb, 5)];
    dec->vector[0] = ts_codebook[0][get_bits(&gb, 5)];
    dec->flag = get_bits1(&gb);

    dec->offset1[0] = get_bits(&gb, 4) << 4;
    dec->offset2[3] = get_bits(&gb, 7);
    dec->offset2[2] = get_bits(&gb, 7);
    dec->offset2[1] = get_bits(&gb, 7);
    dec->offset2[0] = get_bits(&gb, 7);

    dec->offset1[1] = get_bits(&gb, 4);
    dec->pulseval[1] = get_bits(&gb, 14);
    dec->pulseval[0] = get_bits(&gb, 14);

    dec->offset1[1] |= get_bits(&gb, 4) << 4;
    dec->pulseval[3] = get_bits(&gb, 14);
    dec->pulseval[2] = get_bits(&gb, 14);

    dec->offset1[0] |= get_bits1(&gb);
    dec->pulsepos[0] = get_bits_long(&gb, 27);
    dec->pulseoff[0] = get_bits(&gb, 4);

    dec->offset1[0] |= get_bits1(&gb) << 1;
    dec->pulsepos[1] = get_bits_long(&gb, 27);
    dec->pulseoff[1] = get_bits(&gb, 4);

    dec->offset1[0] |= get_bits1(&gb) << 2;
    dec->pulsepos[2] = get_bits_long(&gb, 27);
    dec->pulseoff[2] = get_bits(&gb, 4);

    dec->offset1[0] |= get_bits1(&gb) << 3;
    dec->pulsepos[3] = get_bits_long(&gb, 27);
    dec->pulseoff[3] = get_bits(&gb, 4);
}
