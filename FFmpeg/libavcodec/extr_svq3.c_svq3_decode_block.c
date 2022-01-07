
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef scalar_t__ int32_t ;
typedef int int16_t ;
struct TYPE_2__ {int run; int level; } ;
typedef int GetBitContext ;




 unsigned int get_interleaved_ue_golomb (int *) ;

 TYPE_1__** svq3_dct_tables ;


__attribute__((used)) static inline int svq3_decode_block(GetBitContext *gb, int16_t *block,
                                    int index, const int type)
{
    static const uint8_t *const scan_patterns[4] = {
        129, 130, 128, 131
    };

    int run, level, sign, limit;
    unsigned vlc;
    const int intra = 3 * type >> 2;
    const uint8_t *const scan = scan_patterns[type];

    for (limit = (16 >> intra); index < 16; index = limit, limit += 8) {
        for (; (vlc = get_interleaved_ue_golomb(gb)) != 0; index++) {
            if ((int32_t)vlc < 0)
                return -1;

            sign = (vlc & 1) ? 0 : -1;
            vlc = vlc + 1 >> 1;

            if (type == 3) {
                if (vlc < 3) {
                    run = 0;
                    level = vlc;
                } else if (vlc < 4) {
                    run = 1;
                    level = 1;
                } else {
                    run = vlc & 0x3;
                    level = (vlc + 9 >> 2) - run;
                }
            } else {
                if (vlc < 16U) {
                    run = svq3_dct_tables[intra][vlc].run;
                    level = svq3_dct_tables[intra][vlc].level;
                } else if (intra) {
                    run = vlc & 0x7;
                    level = (vlc >> 3) + ((run == 0) ? 8 : ((run < 2) ? 2 : ((run < 5) ? 0 : -1)));
                } else {
                    run = vlc & 0xF;
                    level = (vlc >> 4) + ((run == 0) ? 4 : ((run < 3) ? 2 : ((run < 10) ? 1 : 0)));
                }
            }


            if ((index += run) >= limit)
                return -1;

            block[scan[index]] = (level ^ sign) - sign;
        }

        if (type != 2) {
            break;
        }
    }

    return 0;
}
