
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int cl_platform_id ;
struct TYPE_6__ {int key; int name; } ;
struct TYPE_5__ {int key; int value; } ;
typedef int AVHWDeviceContext ;
typedef TYPE_1__ AVDictionaryEntry ;
typedef int AVDictionary ;


 int AVERROR_UNKNOWN ;
 int AV_LOG_DEBUG ;
 int AV_LOG_ERROR ;
 int FF_ARRAY_ELEMS (TYPE_2__*) ;
 TYPE_1__* av_dict_get (int *,int ,int *,int ) ;
 int av_free (char*) ;
 int av_log (int *,int ,char*,int ,char const*) ;
 int av_stristr (char*,int ) ;
 char* opencl_get_platform_string (int ,int ) ;
 TYPE_2__* opencl_platform_params ;

__attribute__((used)) static int opencl_filter_platform(AVHWDeviceContext *hwdev,
                                  cl_platform_id platform_id,
                                  const char *platform_name,
                                  void *context)
{
    AVDictionary *opts = context;
    const AVDictionaryEntry *param;
    char *str;
    int i, ret = 0;

    for (i = 0; i < FF_ARRAY_ELEMS(opencl_platform_params); i++) {
        param = av_dict_get(opts, opencl_platform_params[i].key,
                            ((void*)0), 0);
        if (!param)
            continue;

        str = opencl_get_platform_string(platform_id,
                                         opencl_platform_params[i].name);
        if (!str) {
            av_log(hwdev, AV_LOG_ERROR, "Failed to query %s "
                   "of platform \"%s\".\n",
                   opencl_platform_params[i].key, platform_name);
            return AVERROR_UNKNOWN;
        }
        if (!av_stristr(str, param->value)) {
            av_log(hwdev, AV_LOG_DEBUG, "%s does not match (\"%s\").\n",
                   param->key, str);
            ret = 1;
        }
        av_free(str);
    }

    return ret;
}
