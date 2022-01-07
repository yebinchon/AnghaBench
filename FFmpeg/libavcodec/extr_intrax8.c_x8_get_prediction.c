
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int edges; int mb_x; int mb_y; int mb_width; int est_run; int* prediction_table; int orient; int quant; } ;
typedef TYPE_1__ IntraX8Context ;


 void* FFMIN (int,int) ;

__attribute__((used)) static void x8_get_prediction(IntraX8Context *const w)
{
    int a, b, c, i;

    w->edges = 1 * !w->mb_x;
    w->edges |= 2 * !w->mb_y;
    w->edges |= 4 * (w->mb_x >= (2 * w->mb_width - 1));

    switch (w->edges & 3) {
    case 0:
        break;
    case 1:

        w->est_run = w->prediction_table[!(w->mb_y & 1)] >> 2;
        w->orient = 1;
        return;
    case 2:

        w->est_run = w->prediction_table[2 * w->mb_x - 2] >> 2;
        w->orient = 2;
        return;
    case 3:
        w->est_run = 16;
        w->orient = 0;
        return;
    }

    b = w->prediction_table[2 * w->mb_x + !(w->mb_y & 1)];
    a = w->prediction_table[2 * w->mb_x - 2 + (w->mb_y & 1)];
    c = w->prediction_table[2 * w->mb_x - 2 + !(w->mb_y & 1)];

    w->est_run = FFMIN(b, a);



    if ((w->mb_x & w->mb_y) != 0)
        w->est_run = FFMIN(c, w->est_run);
    w->est_run >>= 2;

    a &= 3;
    b &= 3;
    c &= 3;

    i = (0xFFEAF4C4 >> (2 * b + 8 * a)) & 3;
    if (i != 3)
        w->orient = i;
    else
        w->orient = (0xFFEAD8 >> (2 * c + 8 * (w->quant > 12))) & 3;
}
