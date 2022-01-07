
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 scalar_t__ FF_ARRAY_ELEMS (int*) ;
 int* ass_libavfilter_log_level_map ;
 int av_clip (int,int ,scalar_t__) ;
 int av_log (void*,int const,char*) ;
 int av_vlog (void*,int const,char const*,int ) ;

__attribute__((used)) static void ass_log(int ass_level, const char *fmt, va_list args, void *ctx)
{
    const int ass_level_clip = av_clip(ass_level, 0,
        FF_ARRAY_ELEMS(ass_libavfilter_log_level_map) - 1);
    const int level = ass_libavfilter_log_level_map[ass_level_clip];

    av_vlog(ctx, level, fmt, args);
    av_log(ctx, level, "\n");
}
