
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AV_LOG_ERROR ;
 int AV_LOG_INFO ;
 int av_log (void*,int,char*,char const*) ;
 int * strstr (char const*,char*) ;

__attribute__((used)) static void openmpt_logfunc(const char *message, void *userdata)
{
    int level = AV_LOG_INFO;
    if (strstr(message, "ERROR") != ((void*)0)) {
        level = AV_LOG_ERROR;
    }
    av_log(userdata, level, "%s\n", message);
}
