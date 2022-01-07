
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int av_dict_set (int *,char*,char*,int ) ;
 int sws_dict ;

void init_opts(void)
{
    av_dict_set(&sws_dict, "flags", "bicubic", 0);
}
