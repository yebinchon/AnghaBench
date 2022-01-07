
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int AVCodecContext ;


 int AV_LOG_ERROR ;
 int av_vlog (int *,int ,char const*,int ) ;

__attribute__((used)) static void libdav1d_log_callback(void *opaque, const char *fmt, va_list vl)
{
    AVCodecContext *c = opaque;

    av_vlog(c, AV_LOG_ERROR, fmt, vl);
}
