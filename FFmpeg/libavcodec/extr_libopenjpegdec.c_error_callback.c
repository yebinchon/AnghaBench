
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AV_LOG_ERROR ;
 int av_log (void*,int ,char*,char const*) ;

__attribute__((used)) static void error_callback(const char *msg, void *data)
{
    av_log(data, AV_LOG_ERROR, "%s", msg);
}
