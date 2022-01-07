
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LIBAVFILTER_VERSION_INT ;
 int LIBAVFILTER_VERSION_MICRO ;
 int av_assert0 (int) ;

unsigned avfilter_version(void)
{
    av_assert0(LIBAVFILTER_VERSION_MICRO >= 100);
    return LIBAVFILTER_VERSION_INT;
}
