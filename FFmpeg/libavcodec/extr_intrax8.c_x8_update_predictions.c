
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* prediction_table; int mb_x; int mb_y; } ;
typedef TYPE_1__ IntraX8Context ;



__attribute__((used)) static void x8_update_predictions(IntraX8Context *const w, const int orient,
                                  const int est_run)
{
    w->prediction_table[w->mb_x * 2 + (w->mb_y & 1)] = (est_run << 2) + 1 * (orient == 4) + 2 * (orient == 8);




}
