
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int comb_check_nthreads; scalar_t__* block_score; scalar_t__ comb_check_complete; } ;
typedef TYPE_1__ hb_filter_private_t ;



__attribute__((used)) static void reset_combing_results( hb_filter_private_t * pv )
{
    pv->comb_check_complete = 0;
    int ii;
    for (ii = 0; ii < pv->comb_check_nthreads; ii++)
    {
       pv->block_score[ii] = 0;
    }
}
