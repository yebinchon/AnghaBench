
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_4__ {int* window_sequence; } ;
struct TYPE_5__ {TYPE_1__ ics; } ;
typedef TYPE_2__ SingleChannelElement ;
typedef int GetBitContext ;


 scalar_t__ get_bits (int *,int) ;
 int skip_bits (int *,int) ;

__attribute__((used)) static void decode_gain_control(SingleChannelElement * sce, GetBitContext * gb)
{

    static const uint8_t gain_mode[4][3] = {
        {1, 0, 5},
        {2, 1, 2},
        {8, 0, 2},
        {2, 1, 5},
    };

    const int mode = sce->ics.window_sequence[0];
    uint8_t bd, wd, ad;


    uint8_t max_band = get_bits(gb, 2);
    for (bd = 0; bd < max_band; bd++) {
        for (wd = 0; wd < gain_mode[mode][0]; wd++) {
            uint8_t adjust_num = get_bits(gb, 3);
            for (ad = 0; ad < adjust_num; ad++) {
                skip_bits(gb, 4 + ((wd == 0 && gain_mode[mode][1])
                                     ? 4
                                     : gain_mode[mode][2]));
            }
        }
    }
}
