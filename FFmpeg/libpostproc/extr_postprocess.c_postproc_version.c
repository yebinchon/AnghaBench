
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LIBPOSTPROC_VERSION_INT ;
 int LIBPOSTPROC_VERSION_MICRO ;
 int av_assert0 (int) ;

unsigned postproc_version(void)
{
    av_assert0(LIBPOSTPROC_VERSION_MICRO >= 100);
    return LIBPOSTPROC_VERSION_INT;
}
