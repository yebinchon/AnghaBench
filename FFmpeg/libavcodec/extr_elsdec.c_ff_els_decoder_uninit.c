
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rem_rung_list; } ;
typedef TYPE_1__ ElsUnsignedRung ;


 int av_freep (int *) ;

void ff_els_decoder_uninit(ElsUnsignedRung *rung)
{
    av_freep(&rung->rem_rung_list);
}
