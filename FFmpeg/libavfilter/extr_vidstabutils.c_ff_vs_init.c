
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AV_LOG_ERROR ;
 int AV_LOG_INFO ;
 int AV_LOG_VERBOSE ;
 int AV_LOG_WARNING ;
 scalar_t__ VS_ERROR ;
 int VS_ERROR_TYPE ;
 int VS_INFO_TYPE ;
 int VS_MSG_TYPE ;
 int VS_OK ;
 int VS_WARN_TYPE ;
 int av_free ;
 int av_malloc ;
 int av_mallocz ;
 int av_realloc ;
 int vs2av_log ;
 int vs_free ;
 int vs_log ;
 int vs_malloc ;
 int vs_realloc ;
 int vs_zalloc ;

void ff_vs_init(void)
{
    vs_malloc = av_malloc;
    vs_zalloc = av_mallocz;
    vs_realloc = av_realloc;
    vs_free = av_free;

    VS_ERROR_TYPE = AV_LOG_ERROR;
    VS_WARN_TYPE = AV_LOG_WARNING;
    VS_INFO_TYPE = AV_LOG_INFO;
    VS_MSG_TYPE = AV_LOG_VERBOSE;

    vs_log = vs2av_log;

    VS_ERROR = 0;
    VS_OK = 1;
}
