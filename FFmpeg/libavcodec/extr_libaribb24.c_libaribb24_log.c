
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVCodecContext ;


 int AV_LOG_INFO ;
 int av_log (int *,int ,char*,char const*) ;

__attribute__((used)) static void libaribb24_log(void *p, const char *msg)
{
    av_log((AVCodecContext *)p, AV_LOG_INFO, "%s\n", msg);
}
