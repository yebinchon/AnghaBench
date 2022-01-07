
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 int AV_LOG_FATAL ;
 int AV_LOG_INFO ;
 int AV_LOG_VERBOSE ;
 int AV_LOG_WARNING ;






 int av_log (int *,int,char*) ;
 int av_vlog (int *,int,char const*,int ) ;

__attribute__((used)) static void rtmp_log(int level, const char *fmt, va_list args)
{
    switch (level) {
    default:
    case 133: level = AV_LOG_FATAL; break;
    case 130: level = AV_LOG_ERROR; break;
    case 128: level = AV_LOG_WARNING; break;
    case 129: level = AV_LOG_INFO; break;
    case 132: level = AV_LOG_VERBOSE; break;
    case 131: level = AV_LOG_DEBUG; break;
    }

    av_vlog(((void*)0), level, fmt, args);
    av_log(((void*)0), level, "\n");
}
