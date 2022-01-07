
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int16_t ;
struct TYPE_4__ {int previous; int factor; int level; int prev2; } ;
typedef TYPE_1__ ChannelData ;


 int FFMIN (int,int) ;
 int QT_8S_2_16S (int) ;
 int mace_broken_clip_int16 (int) ;
 int read_table (TYPE_1__*,int ,int) ;

__attribute__((used)) static void chomp6(ChannelData *chd, int16_t *output, uint8_t val, int tab_idx)
{
    int16_t current = read_table(chd, val, tab_idx);

    if ((chd->previous ^ current) >= 0) {
        chd->factor = FFMIN(chd->factor + 506, 32767);
    } else {
        if (chd->factor - 314 < -32768)
            chd->factor = -32767;
        else
            chd->factor -= 314;
    }

    current = mace_broken_clip_int16(current + chd->level);

    chd->level = (current*chd->factor) >> 15;
    current >>= 1;

    output[0] = QT_8S_2_16S(chd->previous + chd->prev2 -
                            ((chd->prev2-current) >> 2));
    output[1] = QT_8S_2_16S(chd->previous + current +
                            ((chd->prev2-current) >> 2));
    chd->prev2 = chd->previous;
    chd->previous = current;
}
