
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_3__ {int gb; } ;
typedef TYPE_1__ DCACoreDecoder ;


 int DCA_SUBBAND_SAMPLES ;
 int dca_get_vlc (int *,int *,int) ;
 int * ff_dca_vlc_quant_index ;

__attribute__((used)) static inline int parse_huffman_codes(DCACoreDecoder *s, int32_t *audio, int abits, int sel)
{
    int i;


    for (i = 0; i < DCA_SUBBAND_SAMPLES; i++)
        audio[i] = dca_get_vlc(&s->gb, &ff_dca_vlc_quant_index[abits - 1], sel);

    return 1;
}
