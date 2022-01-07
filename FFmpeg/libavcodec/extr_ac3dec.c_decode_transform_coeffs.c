
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ b4; scalar_t__ b2; scalar_t__ b1; } ;
typedef TYPE_1__ mant_groups ;
struct TYPE_9__ {int channels; int* end_freq; scalar_t__** fixed_coeffs; scalar_t__* channel_in_cpl; } ;
typedef TYPE_2__ AC3DecodeContext ;


 size_t CPL_CH ;
 int calc_transform_coeffs_cpl (TYPE_2__*) ;
 int decode_transform_coeffs_ch (TYPE_2__*,int,size_t,TYPE_1__*) ;
 int remove_dithering (TYPE_2__*) ;

__attribute__((used)) static inline void decode_transform_coeffs(AC3DecodeContext *s, int blk)
{
    int ch, end;
    int got_cplchan = 0;
    mant_groups m;

    m.b1 = m.b2 = m.b4 = 0;

    for (ch = 1; ch <= s->channels; ch++) {

        decode_transform_coeffs_ch(s, blk, ch, &m);


        if (s->channel_in_cpl[ch]) {
            if (!got_cplchan) {
                decode_transform_coeffs_ch(s, blk, CPL_CH, &m);
                calc_transform_coeffs_cpl(s);
                got_cplchan = 1;
            }
            end = s->end_freq[CPL_CH];
        } else {
            end = s->end_freq[ch];
        }
        do
            s->fixed_coeffs[ch][end] = 0;
        while (++end < 256);
    }


    remove_dithering(s);
}
