
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int av_opt_set_defaults2 (void*,int ,int ) ;

void av_opt_set_defaults(void *s)
{
    av_opt_set_defaults2(s, 0, 0);
}
