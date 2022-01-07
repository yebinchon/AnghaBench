
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int curpic_num; } ;
typedef TYPE_1__ RMStream ;


 TYPE_1__* av_mallocz (int) ;

RMStream *ff_rm_alloc_rmstream (void)
{
    RMStream *rms = av_mallocz(sizeof(RMStream));
    if (!rms)
        return ((void*)0);
    rms->curpic_num = -1;
    return rms;
}
