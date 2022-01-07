
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_5__ {int** quant_index_sel; int gb; } ;
typedef TYPE_1__ DCACoreDecoder ;


 int DCA_ABITS_MAX ;
 int DCA_CODE_BOOKS ;
 int DCA_SUBBAND_SAMPLES ;
 int av_assert1 (int) ;
 int* ff_dca_quant_index_group_size ;
 int get_array (int *,int *,int,int) ;
 int memset (int *,int ,int) ;
 int parse_block_codes (TYPE_1__*,int *,int) ;
 int parse_huffman_codes (TYPE_1__*,int *,int,int) ;

__attribute__((used)) static inline int extract_audio(DCACoreDecoder *s, int32_t *audio, int abits, int ch)
{
    av_assert1(abits >= 0 && abits <= DCA_ABITS_MAX);

    if (abits == 0) {

        memset(audio, 0, DCA_SUBBAND_SAMPLES * sizeof(*audio));
        return 0;
    }

    if (abits <= DCA_CODE_BOOKS) {
        int sel = s->quant_index_sel[ch][abits - 1];
        if (sel < ff_dca_quant_index_group_size[abits - 1]) {

            return parse_huffman_codes(s, audio, abits, sel);
        }
        if (abits <= 7) {

            return parse_block_codes(s, audio, abits);
        }
    }


    get_array(&s->gb, audio, DCA_SUBBAND_SAMPLES, abits - 3);
    return 0;
}
