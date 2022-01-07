
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int edges; int mb_x; int mb_y; int mb_width; int chroma_orient; int* prediction_table; scalar_t__ raw_orient; } ;
typedef TYPE_1__ IntraX8Context ;



__attribute__((used)) static void x8_get_prediction_chroma(IntraX8Context *const w)
{
    w->edges = 1 * !(w->mb_x >> 1);
    w->edges |= 2 * !(w->mb_y >> 1);
    w->edges |= 4 * (w->mb_x >= (2 * w->mb_width - 1));

    w->raw_orient = 0;

    if (w->edges & 3) {
        w->chroma_orient = 4 << ((0xCC >> w->edges) & 1);
        return;
    }

    w->chroma_orient = (w->prediction_table[2 * w->mb_x - 2] & 0x03) << 2;
}
