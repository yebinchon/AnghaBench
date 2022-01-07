
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint8_t ;
typedef double int64_t ;
struct TYPE_16__ {int type; int flags; int offset; double min; double max; int name; int help; } ;
struct TYPE_15__ {int num; int den; } ;
typedef TYPE_1__ AVRational ;
typedef TYPE_2__ AVOption ;


 int AVERROR (int ) ;
 int AVERROR_OPTION_NOT_FOUND ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;
 int AV_OPT_FLAG_DEPRECATED ;
 int AV_OPT_FLAG_READONLY ;
 int EINVAL ;
 int ERANGE ;
 double av_get_channel_layout (char const*) ;
 int av_log (void*,int ,char*,...) ;
 TYPE_2__* av_opt_find2 (void*,char const*,int *,int ,int,void**) ;
 int av_parse_time (double*,char const*,int) ;
 int set_string (void*,TYPE_2__ const*,char const*,void*) ;
 int set_string_binary (void*,TYPE_2__ const*,char const*,void*) ;
 int set_string_bool (void*,TYPE_2__ const*,char const*,void*) ;
 int set_string_color (void*,TYPE_2__ const*,char const*,void*) ;
 int set_string_image_size (void*,TYPE_2__ const*,char const*,void*) ;
 int set_string_number (void*,void*,TYPE_2__ const*,char const*,void*) ;
 int set_string_pixel_fmt (void*,TYPE_2__ const*,char const*,void*) ;
 int set_string_sample_fmt (void*,TYPE_2__ const*,char const*,void*) ;
 int set_string_video_rate (void*,TYPE_2__ const*,char const*,TYPE_1__*) ;
 int strcmp (char const*,char*) ;
 int write_number (void*,TYPE_2__ const*,void*,int,int ,int ) ;

int av_opt_set(void *obj, const char *name, const char *val, int search_flags)
{
    int ret = 0;
    void *dst, *target_obj;
    const AVOption *o = av_opt_find2(obj, name, ((void*)0), 0, search_flags, &target_obj);
    if (!o || !target_obj)
        return AVERROR_OPTION_NOT_FOUND;
    if (!val && (o->type != 130 &&
                 o->type != 133 && o->type != 131 &&
                 o->type != 136 && o->type != 128 &&
                 o->type != 139 && o->type != 141 &&
                 o->type != 142 && o->type != 143))
        return AVERROR(EINVAL);

    if (o->flags & AV_OPT_FLAG_READONLY)
        return AVERROR(EINVAL);

    if (o->flags & AV_OPT_FLAG_DEPRECATED)
        av_log(obj, AV_LOG_WARNING, "The \"%s\" option is deprecated: %s\n", name, o->help);

    dst = ((uint8_t *)target_obj) + o->offset;
    switch (o->type) {
    case 143:
        return set_string_bool(obj, o, val, dst);
    case 130:
        return set_string(obj, o, val, dst);
    case 144:
        return set_string_binary(obj, o, val, dst);
    case 138:
    case 135:
    case 134:
    case 129:
    case 137:
    case 140:
    case 132:
        return set_string_number(obj, target_obj, o, val, dst);
    case 136:
        return set_string_image_size(obj, o, val, dst);
    case 128: {
        AVRational tmp;
        ret = set_string_video_rate(obj, o, val, &tmp);
        if (ret < 0)
            return ret;
        return write_number(obj, o, dst, 1, tmp.den, tmp.num);
    }
    case 133:
        return set_string_pixel_fmt(obj, o, val, dst);
    case 131:
        return set_string_sample_fmt(obj, o, val, dst);
    case 139:
        {
            int64_t usecs = 0;
            if (val) {
                if ((ret = av_parse_time(&usecs, val, 1)) < 0) {
                    av_log(obj, AV_LOG_ERROR, "Unable to parse option value \"%s\" as duration\n", val);
                    return ret;
                }
            }
            if (usecs < o->min || usecs > o->max) {
                av_log(obj, AV_LOG_ERROR, "Value %f for parameter '%s' out of range [%g - %g]\n",
                       usecs / 1000000.0, o->name, o->min / 1000000.0, o->max / 1000000.0);
                return AVERROR(ERANGE);
            }
            *(int64_t *)dst = usecs;
            return 0;
        }
    case 141:
        return set_string_color(obj, o, val, dst);
    case 142:
        if (!val || !strcmp(val, "none")) {
            *(int64_t *)dst = 0;
        } else {
            int64_t cl = av_get_channel_layout(val);
            if (!cl) {
                av_log(obj, AV_LOG_ERROR, "Unable to parse option value \"%s\" as channel layout\n", val);
                ret = AVERROR(EINVAL);
            }
            *(int64_t *)dst = cl;
            return ret;
        }
        break;
    }

    av_log(obj, AV_LOG_ERROR, "Invalid option type.\n");
    return AVERROR(EINVAL);
}
