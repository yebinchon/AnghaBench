
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LIBSWRESAMPLE_VERSION_INT ;
 int LIBSWRESAMPLE_VERSION_MICRO ;
 int av_assert0 (int) ;

unsigned swresample_version(void)
{
    av_assert0(LIBSWRESAMPLE_VERSION_MICRO >= 100);
    return LIBSWRESAMPLE_VERSION_INT;
}
