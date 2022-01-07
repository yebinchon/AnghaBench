
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int numCB; int* utility; int error; scalar_t__* utility_inc; } ;
typedef TYPE_1__ elbg_data ;


 int evaluate_utility_inc (TYPE_1__*) ;
 int get_closest_codebook (TYPE_1__*,int) ;
 int get_high_utility_cell (TYPE_1__*) ;
 int try_shift_candidate (TYPE_1__*,int*) ;

__attribute__((used)) static void do_shiftings(elbg_data *elbg)
{
    int idx[3];

    evaluate_utility_inc(elbg);

    for (idx[0]=0; idx[0] < elbg->numCB; idx[0]++)
        if (elbg->numCB*elbg->utility[idx[0]] < elbg->error) {
            if (elbg->utility_inc[elbg->numCB-1] == 0)
                return;

            idx[1] = get_high_utility_cell(elbg);
            idx[2] = get_closest_codebook(elbg, idx[0]);

            if (idx[1] != idx[0] && idx[1] != idx[2])
                try_shift_candidate(elbg, idx);
        }
}
