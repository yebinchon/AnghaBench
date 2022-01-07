
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int AVOption ;


 int AV_LOG_ERROR ;
 int av_log (void*,int ,char*,char const*) ;
 int av_parse_color (int *,char const*,int,void*) ;

__attribute__((used)) static int set_string_color(void *obj, const AVOption *o, const char *val, uint8_t *dst)
{
    int ret;

    if (!val) {
        return 0;
    } else {
        ret = av_parse_color(dst, val, -1, obj);
        if (ret < 0)
            av_log(obj, AV_LOG_ERROR, "Unable to parse option value \"%s\" as color\n", val);
        return ret;
    }
    return 0;
}
