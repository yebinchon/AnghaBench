
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_3__ {int num_aac_frames; int samples; } ;
typedef int GetBitContext ;
typedef TYPE_1__ AACADTSHeaderInfo ;


 int AVERROR (int ) ;
 int AV_AAC_ADTS_HEADER_SIZE ;
 int ENOSYS ;
 int ff_adts_header_parse (int *,TYPE_1__*) ;
 int init_get_bits8 (int *,int const*,int ) ;

int av_adts_header_parse(const uint8_t *buf, uint32_t *samples, uint8_t *frames)
{
    return AVERROR(ENOSYS);

}
