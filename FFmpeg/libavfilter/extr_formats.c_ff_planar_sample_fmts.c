
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVFilterFormats ;


 scalar_t__ av_get_bytes_per_sample (int) ;
 scalar_t__ av_sample_fmt_is_planar (int) ;
 scalar_t__ ff_add_format (int **,int) ;

AVFilterFormats *ff_planar_sample_fmts(void)
{
    AVFilterFormats *ret = ((void*)0);
    int fmt;

    for (fmt = 0; av_get_bytes_per_sample(fmt)>0; fmt++)
        if (av_sample_fmt_is_planar(fmt))
            if (ff_add_format(&ret, fmt) < 0)
                return ((void*)0);

    return ret;
}
