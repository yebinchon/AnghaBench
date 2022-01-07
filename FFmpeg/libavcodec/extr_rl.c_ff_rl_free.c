
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * index_run; int * max_level; int * max_run; } ;
typedef TYPE_1__ RLTable ;


 int av_freep (int *) ;

void ff_rl_free(RLTable *rl)
{
    int i;

    for (i = 0; i < 2; i++) {
        av_freep(&rl->max_run[i]);
        av_freep(&rl->max_level[i]);
        av_freep(&rl->index_run[i]);
    }
}
