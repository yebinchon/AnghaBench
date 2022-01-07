
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * process; int * instance; scalar_t__ alpha; int * dst; int * src; } ;
typedef int SwsSlice ;
typedef TYPE_1__ SwsFilterDescriptor ;


 int no_chr_scale ;

int ff_init_desc_no_chr(SwsFilterDescriptor *desc, SwsSlice * src, SwsSlice *dst)
{
    desc->src = src;
    desc->dst = dst;
    desc->alpha = 0;
    desc->instance = ((void*)0);
    desc->process = &no_chr_scale;
    return 0;
}
