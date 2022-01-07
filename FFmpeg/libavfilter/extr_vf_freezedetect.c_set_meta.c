
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int metadata; } ;
typedef int FreezeDetectContext ;
typedef TYPE_1__ AVFrame ;


 int AV_LOG_INFO ;
 int av_dict_set (int *,char const*,char const*,int ) ;
 int av_log (int *,int ,char*,char const*,char const*) ;

__attribute__((used)) static int set_meta(FreezeDetectContext *s, AVFrame *frame, const char *key, const char *value)
{
    av_log(s, AV_LOG_INFO, "%s: %s\n", key, value);
    return av_dict_set(&frame->metadata, key, value, 0);
}
