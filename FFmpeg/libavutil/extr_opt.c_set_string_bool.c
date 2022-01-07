
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int min; int max; } ;
typedef TYPE_1__ AVOption ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int av_log (void*,int ,char*,char const*) ;
 scalar_t__ av_match_name (char const*,char*) ;
 int strcmp (char const*,char*) ;
 int strlen (char const*) ;
 int strtol (char const*,char**,int) ;

__attribute__((used)) static int set_string_bool(void *obj, const AVOption *o, const char *val, int *dst)
{
    int n;

    if (!val)
        return 0;

    if (!strcmp(val, "auto")) {
        n = -1;
    } else if (av_match_name(val, "true,y,yes,enable,enabled,on")) {
        n = 1;
    } else if (av_match_name(val, "false,n,no,disable,disabled,off")) {
        n = 0;
    } else {
        char *end = ((void*)0);
        n = strtol(val, &end, 10);
        if (val + strlen(val) != end)
            goto fail;
    }

    if (n < o->min || n > o->max)
        goto fail;

    *dst = n;
    return 0;

fail:
    av_log(obj, AV_LOG_ERROR, "Unable to parse option value \"%s\" as boolean\n", val);
    return AVERROR(EINVAL);
}
