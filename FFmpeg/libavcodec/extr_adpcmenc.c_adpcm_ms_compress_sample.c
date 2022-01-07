
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int16_t ;
struct TYPE_3__ {int sample1; int coeff1; int sample2; int coeff2; int idelta; } ;
typedef TYPE_1__ ADPCMChannelStatus ;


 int av_clip_int16 (int) ;
 int av_clip_intp2 (int,int) ;
 int* ff_adpcm_AdaptationTable ;

__attribute__((used)) static inline uint8_t adpcm_ms_compress_sample(ADPCMChannelStatus *c,
                                               int16_t sample)
{
    int predictor, nibble, bias;

    predictor = (((c->sample1) * (c->coeff1)) +
                (( c->sample2) * (c->coeff2))) / 64;

    nibble = sample - predictor;
    if (nibble >= 0)
        bias = c->idelta / 2;
    else
        bias = -c->idelta / 2;

    nibble = (nibble + bias) / c->idelta;
    nibble = av_clip_intp2(nibble, 3) & 0x0F;

    predictor += ((nibble & 0x08) ? (nibble - 0x10) : nibble) * c->idelta;

    c->sample2 = c->sample1;
    c->sample1 = av_clip_int16(predictor);

    c->idelta = (ff_adpcm_AdaptationTable[nibble] * c->idelta) >> 8;
    if (c->idelta < 16)
        c->idelta = 16;

    return nibble;
}
