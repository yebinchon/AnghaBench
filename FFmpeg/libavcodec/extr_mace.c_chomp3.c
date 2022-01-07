
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int16_t ;
struct TYPE_4__ {int level; } ;
typedef TYPE_1__ ChannelData ;


 int QT_8S_2_16S (int) ;
 int mace_broken_clip_int16 (int) ;
 int read_table (TYPE_1__*,int ,int) ;

__attribute__((used)) static void chomp3(ChannelData *chd, int16_t *output, uint8_t val, int tab_idx)
{

    int16_t current = read_table(chd, val, tab_idx);

    current = mace_broken_clip_int16(current + chd->level);

    chd->level = current - (current >> 3);
    *output = QT_8S_2_16S(current);
}
