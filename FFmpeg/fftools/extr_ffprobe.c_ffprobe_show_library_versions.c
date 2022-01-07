
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WriterContext ;


 int AVCODEC ;
 int AVDEVICE ;
 int AVFILTER ;
 int AVFORMAT ;
 int AVUTIL ;
 int POSTPROC ;
 int SECTION_ID_LIBRARY_VERSIONS ;
 int SHOW_LIB_VERSION (int ,int ) ;
 int SWRESAMPLE ;
 int SWSCALE ;
 int avcodec ;
 int avdevice ;
 int avfilter ;
 int avformat ;
 int avutil ;
 int postproc ;
 int swresample ;
 int swscale ;
 int writer_print_section_footer (int *) ;
 int writer_print_section_header (int *,int ) ;

__attribute__((used)) static void ffprobe_show_library_versions(WriterContext *w)
{
    writer_print_section_header(w, SECTION_ID_LIBRARY_VERSIONS);
    SHOW_LIB_VERSION(avutil, AVUTIL);
    SHOW_LIB_VERSION(avcodec, AVCODEC);
    SHOW_LIB_VERSION(avformat, AVFORMAT);
    SHOW_LIB_VERSION(avdevice, AVDEVICE);
    SHOW_LIB_VERSION(avfilter, AVFILTER);
    SHOW_LIB_VERSION(swscale, SWSCALE);
    SHOW_LIB_VERSION(swresample, SWRESAMPLE);
    SHOW_LIB_VERSION(postproc, POSTPROC);
    writer_print_section_footer(w);
}
