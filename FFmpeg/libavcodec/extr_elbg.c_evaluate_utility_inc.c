
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_3__ {int numCB; int* utility; int error; int* utility_inc; } ;
typedef TYPE_1__ elbg_data ;



__attribute__((used)) static void evaluate_utility_inc(elbg_data *elbg)
{
    int i;
    int64_t inc=0;

    for (i=0; i < elbg->numCB; i++) {
        if (elbg->numCB*elbg->utility[i] > elbg->error)
            inc += elbg->utility[i];
        elbg->utility_inc[i] = inc;
    }
}
