
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int format; } ;
typedef TYPE_1__ AVBufferSrcParameters ;


 TYPE_1__* av_mallocz (int) ;

AVBufferSrcParameters *av_buffersrc_parameters_alloc(void)
{
    AVBufferSrcParameters *par = av_mallocz(sizeof(*par));
    if (!par)
        return ((void*)0);

    par->format = -1;

    return par;
}
