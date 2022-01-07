
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* filter_bank; } ;
typedef TYPE_1__ ResampleContext ;


 int av_freep (TYPE_1__**) ;

__attribute__((used)) static void resample_free(ResampleContext **cc){
    ResampleContext *c = *cc;
    if(!c)
        return;
    av_freep(&c->filter_bank);
    av_freep(cc);
}
