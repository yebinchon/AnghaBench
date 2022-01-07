
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
 int av_vlog (void*,int const,char const*,int ) ;

__attribute__((used)) static void X264_log(void *p, int level, const char *fmt, va_list args)
{
    static const int level_map[] = {
        [130] = 134,
        [128] = 132,
        [129] = 133,
        [131] = 135
    };

    if (level < 0 || level > 131)
        return;

    av_vlog(p, level_map[level], fmt, args);
}
