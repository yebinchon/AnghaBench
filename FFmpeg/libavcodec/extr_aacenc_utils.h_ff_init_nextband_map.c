
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned char uint8_t ;
struct TYPE_4__ {int num_windows; int num_swb; scalar_t__* group_len; } ;
struct TYPE_5__ {scalar_t__* band_type; int * zeroes; TYPE_1__ ics; } ;
typedef TYPE_2__ SingleChannelElement ;


 scalar_t__ RESERVED_BT ;

__attribute__((used)) static inline void ff_init_nextband_map(const SingleChannelElement *sce, uint8_t *nextband)
{
    unsigned char prevband = 0;
    int w, g;

    for (g = 0; g < 128; g++)
        nextband[g] = g;


    for (w = 0; w < sce->ics.num_windows; w += sce->ics.group_len[w]) {
        for (g = 0; g < sce->ics.num_swb; g++) {
            if (!sce->zeroes[w*16+g] && sce->band_type[w*16+g] < RESERVED_BT)
                prevband = nextband[prevband] = w*16+g;
        }
    }
    nextband[prevband] = prevband;
}
