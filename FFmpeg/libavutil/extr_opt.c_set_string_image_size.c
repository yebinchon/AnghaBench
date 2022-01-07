
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVOption ;


 int AV_LOG_ERROR ;
 int av_log (void*,int ,char*,char const*) ;
 int av_parse_video_size (int*,int*,char const*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int set_string_image_size(void *obj, const AVOption *o, const char *val, int *dst)
{
    int ret;

    if (!val || !strcmp(val, "none")) {
        dst[0] =
        dst[1] = 0;
        return 0;
    }
    ret = av_parse_video_size(dst, dst + 1, val);
    if (ret < 0)
        av_log(obj, AV_LOG_ERROR, "Unable to parse option value \"%s\" as image size\n", val);
    return ret;
}
