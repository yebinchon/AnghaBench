
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AVCODEC ;
 int AVDEVICE ;
 int AVFILTER ;
 int AVFORMAT ;
 int AVRESAMPLE ;
 int AVUTIL ;
 int POSTPROC ;
 int PRINT_LIB_INFO (int ,int ,int,int) ;
 int SWRESAMPLE ;
 int SWSCALE ;
 int avcodec ;
 int avdevice ;
 int avfilter ;
 int avformat ;
 int avresample ;
 int avutil ;
 int postproc ;
 int swresample ;
 int swscale ;

__attribute__((used)) static void print_all_libs_info(int flags, int level)
{
    PRINT_LIB_INFO(avutil, AVUTIL, flags, level);
    PRINT_LIB_INFO(avcodec, AVCODEC, flags, level);
    PRINT_LIB_INFO(avformat, AVFORMAT, flags, level);
    PRINT_LIB_INFO(avdevice, AVDEVICE, flags, level);
    PRINT_LIB_INFO(avfilter, AVFILTER, flags, level);
    PRINT_LIB_INFO(avresample, AVRESAMPLE, flags, level);
    PRINT_LIB_INFO(swscale, SWSCALE, flags, level);
    PRINT_LIB_INFO(swresample, SWRESAMPLE, flags, level);
    PRINT_LIB_INFO(postproc, POSTPROC, flags, level);
}
