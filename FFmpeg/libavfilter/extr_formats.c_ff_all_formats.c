
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum AVSampleFormat { ____Placeholder_AVSampleFormat } AVSampleFormat ;
typedef enum AVMediaType { ____Placeholder_AVMediaType } AVMediaType ;
typedef int AVPixFmtDescriptor ;
typedef int AVFilterFormats ;


 int AVMEDIA_TYPE_AUDIO ;
 int AVMEDIA_TYPE_VIDEO ;
 scalar_t__ av_get_sample_fmt_name (int) ;
 int av_pix_fmt_desc_get_id (int const*) ;
 int * av_pix_fmt_desc_next (int const*) ;
 scalar_t__ ff_add_format (int **,int) ;

AVFilterFormats *ff_all_formats(enum AVMediaType type)
{
    AVFilterFormats *ret = ((void*)0);

    if (type == AVMEDIA_TYPE_VIDEO) {
        const AVPixFmtDescriptor *desc = ((void*)0);
        while ((desc = av_pix_fmt_desc_next(desc))) {
            if (ff_add_format(&ret, av_pix_fmt_desc_get_id(desc)) < 0)
                return ((void*)0);
        }
    } else if (type == AVMEDIA_TYPE_AUDIO) {
        enum AVSampleFormat fmt = 0;
        while (av_get_sample_fmt_name(fmt)) {
            if (ff_add_format(&ret, fmt) < 0)
                return ((void*)0);
            fmt++;
        }
    }

    return ret;
}
