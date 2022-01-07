
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {int* utility_inc; int numCB; int * cells; int rand_state; } ;
typedef TYPE_1__ elbg_data ;


 int INT_MAX ;
 int av_assert2 (int ) ;
 int av_lfg_get (int ) ;

__attribute__((used)) static int get_high_utility_cell(elbg_data *elbg)
{
    int i=0;

    uint64_t r;

    if (elbg->utility_inc[elbg->numCB-1] < INT_MAX) {
        r = av_lfg_get(elbg->rand_state) % (unsigned int)elbg->utility_inc[elbg->numCB-1] + 1;
    } else {
        r = av_lfg_get(elbg->rand_state);
        r = (av_lfg_get(elbg->rand_state) + (r<<32)) % elbg->utility_inc[elbg->numCB-1] + 1;
    }

    while (elbg->utility_inc[i] < r) {
        i++;
    }

    av_assert2(elbg->cells[i]);

    return i;
}
